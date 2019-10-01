# encoding: utf-8

# File:	clients/smt.ycp
# Package:	Configuration of smt
# Summary:	Main file
# Authors:	Lukas Ocilka <locilka@suse.cz>
#
# $Id: smt.ycp 27914 2006-02-13 14:32:08Z locilka $
#
# Main file for smt configuration. Uses all other files.
module Yast
  class InstSmtClient < Client
    def main
      Yast.import "UI"
      Yast.import "Mode"

      textdomain "smt"

      Yast.include self, "smt/wizard.rb"

      Wizard.CreateDialog()

      SMTInstallSequence()

      UI.CloseDialog()
    end
  end
end

Yast::InstSmtClient.new.main
