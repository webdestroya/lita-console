require "lita"
require "readline"

module Lita
  module Adapters
    class Console < Adapter
      # Creates a "Shell User" and then loops a prompt and input, passing the
      # incoming messages to the robot.
      # @return [void]
      def run
        user = User.create(1, name: "Shell User")
        source = Source.new(user: user)
        puts 'Type "exit" or "quit" to end the session.'

        while line = Readline.readline("#{robot.name} > ", true)
          input = line.chomp.strip
          break if input == "exit" || input == "quit"
          robot.receive(build_message(robot, input, source))
        end
      end

      # Outputs outgoing messages to the shell.
      # @param target [Lita::Source] Unused, since there is only one user in the
      #   shell environment.
      # @param strings [Array<String>] An array of strings to output.
      # @return [void]
      def send_messages(target, strings)
        puts strings
      end

      # Adds a blank line for a nice looking exit.
      # @return [void]
      def shut_down
        puts
      end

      private

      def build_message(robot, input, source)
        message = Message.new(robot, input, source)
        message.command! if Lita.config.adapter.private_chat
        message
      end
    end

    Lita.register_adapter(:console, Console)
  end
end
