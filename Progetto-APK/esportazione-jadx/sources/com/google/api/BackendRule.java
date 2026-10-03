package com.google.api;

import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.O0;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import okhttp3.HttpUrl;
import p175w4.C3215l;
import p175w4.EnumC3214k;
import p175w4.EnumC3216m;
import p175w4.InterfaceC3217n;

/* JADX INFO: loaded from: classes.dex */
public final class BackendRule extends AbstractC2909i1 implements InterfaceC3217n {
    public static final int ADDRESS_FIELD_NUMBER = 2;
    public static final int DEADLINE_FIELD_NUMBER = 3;
    private static final BackendRule DEFAULT_INSTANCE;
    public static final int DISABLE_AUTH_FIELD_NUMBER = 8;
    public static final int JWT_AUDIENCE_FIELD_NUMBER = 7;
    public static final int MIN_DEADLINE_FIELD_NUMBER = 4;
    public static final int OPERATION_DEADLINE_FIELD_NUMBER = 5;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int PATH_TRANSLATION_FIELD_NUMBER = 6;
    public static final int PROTOCOL_FIELD_NUMBER = 9;
    public static final int SELECTOR_FIELD_NUMBER = 1;
    private Object authentication_;
    private double deadline_;
    private double minDeadline_;
    private double operationDeadline_;
    private int pathTranslation_;
    private int authenticationCase_ = 0;
    private String selector_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String address_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String protocol_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        BackendRule backendRule = new BackendRule();
        DEFAULT_INSTANCE = backendRule;
        AbstractC2909i1.registerDefaultInstance(BackendRule.class, backendRule);
    }

    private BackendRule() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAddress() {
        this.address_ = getDefaultInstance().getAddress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAuthentication() {
        this.authenticationCase_ = 0;
        this.authentication_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDeadline() {
        this.deadline_ = 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDisableAuth() {
        if (this.authenticationCase_ == 8) {
            this.authenticationCase_ = 0;
            this.authentication_ = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearJwtAudience() {
        if (this.authenticationCase_ == 7) {
            this.authenticationCase_ = 0;
            this.authentication_ = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMinDeadline() {
        this.minDeadline_ = 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearOperationDeadline() {
        this.operationDeadline_ = 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPathTranslation() {
        this.pathTranslation_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearProtocol() {
        this.protocol_ = getDefaultInstance().getProtocol();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelector() {
        this.selector_ = getDefaultInstance().getSelector();
    }

    public static BackendRule getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3215l newBuilder() {
        return (C3215l) DEFAULT_INSTANCE.createBuilder();
    }

    public static BackendRule parseDelimitedFrom(InputStream inputStream) {
        return (BackendRule) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BackendRule parseFrom(ByteBuffer byteBuffer) {
        return (BackendRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAddress(String str) {
        str.getClass();
        this.address_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAddressBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.address_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDeadline(double d6) {
        this.deadline_ = d6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisableAuth(boolean z7) {
        this.authenticationCase_ = 8;
        this.authentication_ = Boolean.valueOf(z7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJwtAudience(String str) {
        str.getClass();
        this.authenticationCase_ = 7;
        this.authentication_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJwtAudienceBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.authentication_ = rVar.t();
        this.authenticationCase_ = 7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMinDeadline(double d6) {
        this.minDeadline_ = d6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOperationDeadline(double d6) {
        this.operationDeadline_ = d6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPathTranslation(EnumC3216m enumC3216m) {
        this.pathTranslation_ = enumC3216m.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPathTranslationValue(int i8) {
        this.pathTranslation_ = i8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProtocol(String str) {
        str.getClass();
        this.protocol_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProtocolBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.protocol_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSelector(String str) {
        str.getClass();
        this.selector_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSelectorBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.selector_ = rVar.t();
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\t\u0001\u0000\u0001\t\t\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0000\u0004\u0000\u0005\u0000\u0006\f\u0007Ȼ\u0000\b:\u0000\tȈ", new Object[]{"authentication_", "authenticationCase_", "selector_", "address_", "deadline_", "minDeadline_", "operationDeadline_", "pathTranslation_", "protocol_"});
            case 3:
                return new BackendRule();
            case 4:
                return new C3215l(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (BackendRule.class) {
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

    public String getAddress() {
        return this.address_;
    }

    public r getAddressBytes() {
        return r.l(this.address_);
    }

    public EnumC3214k getAuthenticationCase() {
        int i8 = this.authenticationCase_;
        if (i8 == 0) {
            return EnumC3214k.f31059I;
        }
        if (i8 == 7) {
            return EnumC3214k.f31057G;
        }
        if (i8 != 8) {
            return null;
        }
        return EnumC3214k.f31058H;
    }

    public double getDeadline() {
        return this.deadline_;
    }

    public boolean getDisableAuth() {
        if (this.authenticationCase_ == 8) {
            return ((Boolean) this.authentication_).booleanValue();
        }
        return false;
    }

    public String getJwtAudience() {
        return this.authenticationCase_ == 7 ? (String) this.authentication_ : HttpUrl.FRAGMENT_ENCODE_SET;
    }

    public r getJwtAudienceBytes() {
        return r.l(this.authenticationCase_ == 7 ? (String) this.authentication_ : HttpUrl.FRAGMENT_ENCODE_SET);
    }

    public double getMinDeadline() {
        return this.minDeadline_;
    }

    public double getOperationDeadline() {
        return this.operationDeadline_;
    }

    public EnumC3216m getPathTranslation() {
        EnumC3216m enumC3216m;
        int i8 = this.pathTranslation_;
        if (i8 == 0) {
            enumC3216m = EnumC3216m.PATH_TRANSLATION_UNSPECIFIED;
        } else if (i8 != 1) {
            enumC3216m = i8 != 2 ? null : EnumC3216m.APPEND_PATH_TO_ADDRESS;
        } else {
            enumC3216m = EnumC3216m.CONSTANT_ADDRESS;
        }
        return enumC3216m == null ? EnumC3216m.UNRECOGNIZED : enumC3216m;
    }

    public int getPathTranslationValue() {
        return this.pathTranslation_;
    }

    public String getProtocol() {
        return this.protocol_;
    }

    public r getProtocolBytes() {
        return r.l(this.protocol_);
    }

    public String getSelector() {
        return this.selector_;
    }

    public r getSelectorBytes() {
        return r.l(this.selector_);
    }

    public boolean hasDisableAuth() {
        return this.authenticationCase_ == 8;
    }

    public boolean hasJwtAudience() {
        return this.authenticationCase_ == 7;
    }

    public static C3215l newBuilder(BackendRule backendRule) {
        return (C3215l) DEFAULT_INSTANCE.createBuilder(backendRule);
    }

    public static BackendRule parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (BackendRule) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static BackendRule parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (BackendRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static BackendRule parseFrom(r rVar) {
        return (BackendRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static BackendRule parseFrom(r rVar, O0 o4) {
        return (BackendRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static BackendRule parseFrom(byte[] bArr) {
        return (BackendRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static BackendRule parseFrom(byte[] bArr, O0 o4) {
        return (BackendRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static BackendRule parseFrom(InputStream inputStream) {
        return (BackendRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BackendRule parseFrom(InputStream inputStream, O0 o4) {
        return (BackendRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static BackendRule parseFrom(AbstractC2961w abstractC2961w) {
        return (BackendRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static BackendRule parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (BackendRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
