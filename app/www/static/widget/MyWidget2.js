// https://studentaid.psu.edu/real-scripts/ajax/ext/source/widgets/
Ext.extend("mywidget",Ext.Container, {

    getFields: function (config) {
        var fieldsArr = '';
        MODx.Ajax.request({
            url: Trans.config.connectorUrl
            ,params: {
                action: "mgr/tr_data/get_fields",
                id_res: MODx.request.id,
                createAction: true
            }
            ,listeners: {
                success: {fn: function(response) {
                    //console.log(response);
                    fieldsArr = response['object'];
                     console.log(fieldsArr+ 'success');
                }, scope: this}
            }
        });

        console.log(fieldsArr + ' - массив полей');
        return [{
            xtype: 'textfield',
            fieldLabel: _('trans_lang_name'),
            name: 'name',
            id: config.id + '-name',
            anchor: '99%',
            allowBlank: false,
        }, {
            xtype: 'textfield',
            fieldLabel: _('trans_lang_code'),
            name: 'code',
            id: config.id + '-code',
            allowBlank: false,
            anchor: '99%'
        }, {
            xtype: 'xcheckbox',
            boxLabel: _('trans_lang_active'),
            name: 'active',
            id: config.id + '-active',
            checked: true,
        }];
    },

    loadDropZones: function () {
    }

});
console.log(Ext.reg)
Ext.reg('mywidget', mywidget);