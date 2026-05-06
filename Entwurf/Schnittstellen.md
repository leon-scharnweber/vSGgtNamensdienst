# Schnittstellen vom Namensdienst

## Registrierung

### Aufruf

{PID, {bind, Name, node()}}

### Return

ok | Wenn der Name erfolgreich registriert wurd
in_use | Wenn der Name schon von wem anders bentutz wird

## Umbenenung

### Aufruf

{PID, {rebind, Name, Node()}}

### Return

ok

## Namen Nachschauen

### Aufruf

{PID, {lookup, Name}}

### Return

{ping, {Name, Node}} | wenn name existiert

not_found | wenn name nicht existiert

## namen entfernen

### Aufruf

{PID, {undbing, Name}}

## Namensdienst reseten

### Aufruf

{PID, reset}

### Return

ok
