class CreateInserts < ActiveRecord::Migration
  def change
    create_table :inserts do |t|
      t.integer :insertid
      t.string :inserttypecode
      t.string :pubcode
      t.string :positioncode
      t.integer :paperstockid
      t.integer :methodid
      t.integer :subtypeid
      t.integer :createdby
      t.integer :updatedby
      t.string :adstatuscode
      t.string :adstatusfursncode
      t.integer :advacct
      t.integer :pressrunlonumber
      t.string :stagecode
      t.string :colorcode
      t.integer :packagenumber
      t.date :issuedate
      t.string :productline
      t.string :materialdesc
      t.integer :batchnumber
      t.integer :width
      t.integer :height
      t.integer :pages
      t.integer :perccircb
      t.integer :adlinage
      t.date :psreceiveddate
      t.integer :erop
      t.string :waitlistheld
      t.string :billedby
      t.string :eionumber
      t.string :cncldbysalesrep
      t.string :regional
      t.integer :cancelledbyuser
      t.date :fursndate
      t.time :transtimefrom
      t.time :transtimeto
      t.date :transdateto
      t.string :overruns
      t.text :insertnotes
      t.string :materialinmclean
      t.string :exclusive
      t.string :schedulernotes
      t.date :transdate
      t.integer :prepressworkid
      t.integer :weight
      t.integer :editorialspace
      t.string :projruncode
      t.string :projdblsect
      t.string :straightcollect
      t.string :sectionname
      t.string :allprintsites
      t.string :printsiteready

      t.timestamps null: false
    end
  end
end
