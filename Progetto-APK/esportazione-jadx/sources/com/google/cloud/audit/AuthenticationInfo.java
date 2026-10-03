package com.google.cloud.audit;

import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.O0;
import com.google.protobuf.R1;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import okhttp3.HttpUrl;
import p183x4.b;

/* JADX INFO: loaded from: classes.dex */
public final class AuthenticationInfo extends AbstractC2909i1 implements R1 {
    private static final AuthenticationInfo DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int PRINCIPAL_EMAIL_FIELD_NUMBER = 1;
    private String principalEmail_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        AuthenticationInfo authenticationInfo = new AuthenticationInfo();
        DEFAULT_INSTANCE = authenticationInfo;
        AbstractC2909i1.registerDefaultInstance(AuthenticationInfo.class, authenticationInfo);
    }

    private AuthenticationInfo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPrincipalEmail() {
        this.principalEmail_ = getDefaultInstance().getPrincipalEmail();
    }

    public static AuthenticationInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static b newBuilder() {
        return (b) DEFAULT_INSTANCE.createBuilder();
    }

    public static AuthenticationInfo parseDelimitedFrom(InputStream inputStream) {
        return (AuthenticationInfo) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static AuthenticationInfo parseFrom(ByteBuffer byteBuffer) {
        return (AuthenticationInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPrincipalEmail(String str) {
        str.getClass();
        this.principalEmail_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPrincipalEmailBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.principalEmail_ = rVar.t();
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"principalEmail_"});
            case 3:
                return new AuthenticationInfo();
            case 4:
                return new b(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (AuthenticationInfo.class) {
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

    public String getPrincipalEmail() {
        return this.principalEmail_;
    }

    public r getPrincipalEmailBytes() {
        return r.l(this.principalEmail_);
    }

    public static b newBuilder(AuthenticationInfo authenticationInfo) {
        return (b) DEFAULT_INSTANCE.createBuilder(authenticationInfo);
    }

    public static AuthenticationInfo parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (AuthenticationInfo) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static AuthenticationInfo parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (AuthenticationInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static AuthenticationInfo parseFrom(r rVar) {
        return (AuthenticationInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static AuthenticationInfo parseFrom(r rVar, O0 o4) {
        return (AuthenticationInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static AuthenticationInfo parseFrom(byte[] bArr) {
        return (AuthenticationInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static AuthenticationInfo parseFrom(byte[] bArr, O0 o4) {
        return (AuthenticationInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static AuthenticationInfo parseFrom(InputStream inputStream) {
        return (AuthenticationInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static AuthenticationInfo parseFrom(InputStream inputStream, O0 o4) {
        return (AuthenticationInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static AuthenticationInfo parseFrom(AbstractC2961w abstractC2961w) {
        return (AuthenticationInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static AuthenticationInfo parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (AuthenticationInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
