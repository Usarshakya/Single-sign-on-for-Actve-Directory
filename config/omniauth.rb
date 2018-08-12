namespace1 = "http://schemas.xmlsoap.org/ws/2005/05/identity/claims"
namespace2 = "http://schemas.microsoft.com/identity/claims"
attributes_map = {
  uid: ["#{namespace2}/objectidentifier"],
  name: ["#{namespace2}/displayname"],
  email: ["#{namespace1}/emailaddress"]
}
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :saml,
           issuer: <the name of your app on Azure>,
           idp_sso_target_url: <idp_sso_target_url>,
           idp_slo_target_url: <idp_slo_target_url>,
           attribute_statements: attributes_map,
           idp_cert: <idp_cert>,
           idp_cert_fingerprint: <idp_cert_fingerprint>,
           name_identifier_format: "urn:oasis:names:tc:SAML:2.0:nameid-format:transient",
           uid_attribute: attributes_map[:uid].first
end