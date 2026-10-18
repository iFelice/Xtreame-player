package com.google.api;

import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2883c;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.InterfaceC2956u1;
import com.google.protobuf.O0;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.HttpUrl;
import p175w4.C3204c;
import p175w4.InterfaceC3206d;
import p175w4.J;

/* JADX INFO: loaded from: classes.dex */
public final class AuthProvider extends AbstractC2909i1 implements InterfaceC3206d {
    public static final int AUDIENCES_FIELD_NUMBER = 4;
    public static final int AUTHORIZATION_URL_FIELD_NUMBER = 5;
    private static final AuthProvider DEFAULT_INSTANCE;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int ISSUER_FIELD_NUMBER = 2;
    public static final int JWKS_URI_FIELD_NUMBER = 3;
    public static final int JWT_LOCATIONS_FIELD_NUMBER = 6;
    private static volatile InterfaceC2894e2 PARSER;
    private String id_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String issuer_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String jwksUri_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String audiences_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String authorizationUrl_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2956u1 jwtLocations_ = AbstractC2909i1.emptyProtobufList();

    static {
        AuthProvider authProvider = new AuthProvider();
        DEFAULT_INSTANCE = authProvider;
        AbstractC2909i1.registerDefaultInstance(AuthProvider.class, authProvider);
    }

    private AuthProvider() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllJwtLocations(Iterable<? extends JwtLocation> iterable) {
        ensureJwtLocationsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.jwtLocations_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addJwtLocations(JwtLocation jwtLocation) {
        jwtLocation.getClass();
        ensureJwtLocationsIsMutable();
        this.jwtLocations_.add(jwtLocation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAudiences() {
        this.audiences_ = getDefaultInstance().getAudiences();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAuthorizationUrl() {
        this.authorizationUrl_ = getDefaultInstance().getAuthorizationUrl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearId() {
        this.id_ = getDefaultInstance().getId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearIssuer() {
        this.issuer_ = getDefaultInstance().getIssuer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearJwksUri() {
        this.jwksUri_ = getDefaultInstance().getJwksUri();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearJwtLocations() {
        this.jwtLocations_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureJwtLocationsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.jwtLocations_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.jwtLocations_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static AuthProvider getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3204c newBuilder() {
        return (C3204c) DEFAULT_INSTANCE.createBuilder();
    }

    public static AuthProvider parseDelimitedFrom(InputStream inputStream) {
        return (AuthProvider) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static AuthProvider parseFrom(ByteBuffer byteBuffer) {
        return (AuthProvider) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeJwtLocations(int i8) {
        ensureJwtLocationsIsMutable();
        this.jwtLocations_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAudiences(String str) {
        str.getClass();
        this.audiences_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAudiencesBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.audiences_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAuthorizationUrl(String str) {
        str.getClass();
        this.authorizationUrl_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAuthorizationUrlBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.authorizationUrl_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setId(String str) {
        str.getClass();
        this.id_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIdBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.id_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIssuer(String str) {
        str.getClass();
        this.issuer_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIssuerBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.issuer_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJwksUri(String str) {
        str.getClass();
        this.jwksUri_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJwksUriBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.jwksUri_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJwtLocations(int i8, JwtLocation jwtLocation) {
        jwtLocation.getClass();
        ensureJwtLocationsIsMutable();
        this.jwtLocations_.set(i8, jwtLocation);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005Ȉ\u0006\u001b", new Object[]{"id_", "issuer_", "jwksUri_", "audiences_", "authorizationUrl_", "jwtLocations_", JwtLocation.class});
            case 3:
                return new AuthProvider();
            case 4:
                return new C3204c(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (AuthProvider.class) {
                        try {
                            c2885c1 = PARSER;
                            if (c2885c1 == null) {
                                c2885c1 = new C2885c1(DEFAULT_INSTANCE);
                                PARSER = c2885c1;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                }
                return c2885c1;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public String getAudiences() {
        return this.audiences_;
    }

    public r getAudiencesBytes() {
        return r.l(this.audiences_);
    }

    public String getAuthorizationUrl() {
        return this.authorizationUrl_;
    }

    public r getAuthorizationUrlBytes() {
        return r.l(this.authorizationUrl_);
    }

    public String getId() {
        return this.id_;
    }

    public r getIdBytes() {
        return r.l(this.id_);
    }

    public String getIssuer() {
        return this.issuer_;
    }

    public r getIssuerBytes() {
        return r.l(this.issuer_);
    }

    public String getJwksUri() {
        return this.jwksUri_;
    }

    public r getJwksUriBytes() {
        return r.l(this.jwksUri_);
    }

    public JwtLocation getJwtLocations(int i8) {
        return (JwtLocation) this.jwtLocations_.get(i8);
    }

    public int getJwtLocationsCount() {
        return this.jwtLocations_.size();
    }

    public List<JwtLocation> getJwtLocationsList() {
        return this.jwtLocations_;
    }

    public J getJwtLocationsOrBuilder(int i8) {
        return (J) this.jwtLocations_.get(i8);
    }

    public List<? extends J> getJwtLocationsOrBuilderList() {
        return this.jwtLocations_;
    }

    public static C3204c newBuilder(AuthProvider authProvider) {
        return (C3204c) DEFAULT_INSTANCE.createBuilder(authProvider);
    }

    public static AuthProvider parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (AuthProvider) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static AuthProvider parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (AuthProvider) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static AuthProvider parseFrom(r rVar) {
        return (AuthProvider) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addJwtLocations(int i8, JwtLocation jwtLocation) {
        jwtLocation.getClass();
        ensureJwtLocationsIsMutable();
        this.jwtLocations_.add(i8, jwtLocation);
    }

    public static AuthProvider parseFrom(r rVar, O0 o4) {
        return (AuthProvider) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static AuthProvider parseFrom(byte[] bArr) {
        return (AuthProvider) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static AuthProvider parseFrom(byte[] bArr, O0 o4) {
        return (AuthProvider) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static AuthProvider parseFrom(InputStream inputStream) {
        return (AuthProvider) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static AuthProvider parseFrom(InputStream inputStream, O0 o4) {
        return (AuthProvider) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static AuthProvider parseFrom(AbstractC2961w abstractC2961w) {
        return (AuthProvider) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static AuthProvider parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (AuthProvider) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
