<script>
  function chLocation(newLocation) { document.location = newLocation; }
</script>

<table cellspacing="0" cellpadding="7" border="0" width="720">
  <tr>
    <td valign="top">
      <table cellspacing="1" cellpadding="3" border="0" width="100%">
  {if $inactive_roles}
        <tr><td class="sectionHeaderNoBorder">{$i18n.form.roles.active_roles}</td></tr>
  {/if}
        <tr>
          <td width="35%" class="tableHeader">{$i18n.label.thing_name}</td>
          <td width="35%" class="tableHeader">{$i18n.form.roles.rights}</td>
          <td class="tableHeader">{$i18n.label.edit}</td>
          <td class="tableHeader">{$i18n.label.delete}</td>
        </tr>
  {if $active_roles}
    {foreach $active_roles as $role}
        <tr bgcolor="{cycle values="#f5f5f5,#ffffff"}">
          <td>{$role.name|escape}</td>
          <td>{$role.rights|escape}</td>
          <td><a href="task_edit.php?id={$task.id}">{$i18n.label.edit}</a></td>
          <td><a href="task_delete.php?id={$task.id}">{$i18n.label.delete}</a></td>
        </tr>
    {/foreach}
  {/if}
      </table>

      <table width="100%">
        <tr>
          <td align="center"><br>
            <form><input type="button" onclick="chLocation('role_add.php');" value="{$i18n.button.add_role}"></form>
          </td>
        </tr>
      </table>

  {if $inactive_roles}
      <table cellspacing="1" cellpadding="3" border="0" width="100%">
        <tr><td class="sectionHeaderNoBorder">{$i18n.form.roles.inactive_roles}</td></tr>
        <tr>
          <td width="35%" class="tableHeader">{$i18n.label.thing_name}</td>
          <td width="35%" class="tableHeader">{$i18n.form.roles.rights}</td>
          <td class="tableHeader">{$i18n.label.edit}</td>
          <td class="tableHeader">{$i18n.label.delete}</td>
        </tr>
    {foreach $inactive_roles as $role}
        <tr bgcolor="{cycle values="#f5f5f5,#ffffff"}">
          <td>{$role.name|escape}</td>
          <td>{$role.rights|escape}</td>
          <td><a href="task_edit.php?id={$task.id}">{$i18n.label.edit}</a></td>
          <td><a href="task_delete.php?id={$task.id}">{$i18n.label.delete}</a></td>
        </tr>
    {/foreach}
      </table>

      <table width="100%">
        <tr>
          <td align="center"><br>
            <form><input type="button" onclick="chLocation('role_add.php');" value="{$i18n.button.add_role}"></form>
          </td>
        </tr>
      </table>
  {/if}
    </td>
  </tr>
</table>