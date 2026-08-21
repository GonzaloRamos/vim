########################################################################
#   ADVERTENCIA: Si estas leyendo esto es que estas usando el skeleton
#   `docs/service_method.md` y no fue revisado ni modificado.
######################################################################## 

### login

DESCRIPCION: XXXX

#### Parámetros

| Parámetro | Tipo | Obligatorio | Descripción |
|-----------|------|-------------|-------------|
| `FuncionID` | string | **Sí** | Debe ser `"XXXX"` |
| `XXXX` | string | **No** | Parametro XXXX |

#### Respuesta Exitosa

```json
{
    "Data": {
        "XXX": XXX,
        "XXX": XXX,
    },
    "CodigoError": 0,
    "DescError": "OK"
}
```

#### Campos de Respuesta

| Campo | Tipo | Descripción |
|-------|------|-------------|
| `XXX` | XXX  |     XXX     |

#### Errores Específicos

| Situación | HTTP Status | NombreError | DescError |
|-----------|-------------|-------------|-----------|
| Parámetros faltantes   | 400 | `3`    | "El parámetro username y password son obligatorios." |
| Credenciales inválidas | 401 | `6`    | Mensaje específico de autenticación |

#### Ejemplo de Uso

**Request**

```bash
curl -X POST \
  '{main_url}?operation=ossApi&service=XXX' \
  -H 'Content-Type: application/json' \
  -H 'oss-privateview-apikey: {tu_api_key}' \
  -d '{
    "FuncionID": "XXX",
    "XXX": "XXX",
    "XXX": "XXX"
  }'
```

[⬆ Volver al inicio](#user-service---servicio-de-autenticación)
---
