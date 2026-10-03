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
import p175w4.C3211h;
import p175w4.InterfaceC3209f;
import p175w4.InterfaceC3212i;
import p175w4.g0;

/* JADX INFO: loaded from: classes.dex */
public final class AuthenticationRule extends AbstractC2909i1 implements InterfaceC3212i {
    public static final int ALLOW_WITHOUT_CREDENTIAL_FIELD_NUMBER = 5;
    private static final AuthenticationRule DEFAULT_INSTANCE;
    public static final int OAUTH_FIELD_NUMBER = 2;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int REQUIREMENTS_FIELD_NUMBER = 7;
    public static final int SELECTOR_FIELD_NUMBER = 1;
    private boolean allowWithoutCredential_;
    private int bitField0_;
    private OAuthRequirements oauth_;
    private String selector_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2956u1 requirements_ = AbstractC2909i1.emptyProtobufList();

    static {
        AuthenticationRule authenticationRule = new AuthenticationRule();
        DEFAULT_INSTANCE = authenticationRule;
        AbstractC2909i1.registerDefaultInstance(AuthenticationRule.class, authenticationRule);
    }

    private AuthenticationRule() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllRequirements(Iterable<? extends AuthRequirement> iterable) {
        ensureRequirementsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.requirements_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRequirements(AuthRequirement authRequirement) {
        authRequirement.getClass();
        ensureRequirementsIsMutable();
        this.requirements_.add(authRequirement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAllowWithoutCredential() {
        this.allowWithoutCredential_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearOauth() {
        this.oauth_ = null;
        this.bitField0_ &= -2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRequirements() {
        this.requirements_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelector() {
        this.selector_ = getDefaultInstance().getSelector();
    }

    private void ensureRequirementsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.requirements_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.requirements_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static AuthenticationRule getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeOauth(OAuthRequirements oAuthRequirements) {
        oAuthRequirements.getClass();
        OAuthRequirements oAuthRequirements2 = this.oauth_;
        if (oAuthRequirements2 == null || oAuthRequirements2 == OAuthRequirements.getDefaultInstance()) {
            this.oauth_ = oAuthRequirements;
        } else {
            g0 g0VarNewBuilder = OAuthRequirements.newBuilder(this.oauth_);
            g0VarNewBuilder.g(oAuthRequirements);
            this.oauth_ = (OAuthRequirements) g0VarNewBuilder.k();
        }
        this.bitField0_ |= 1;
    }

    public static C3211h newBuilder() {
        return (C3211h) DEFAULT_INSTANCE.createBuilder();
    }

    public static AuthenticationRule parseDelimitedFrom(InputStream inputStream) {
        return (AuthenticationRule) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static AuthenticationRule parseFrom(ByteBuffer byteBuffer) {
        return (AuthenticationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeRequirements(int i8) {
        ensureRequirementsIsMutable();
        this.requirements_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAllowWithoutCredential(boolean z7) {
        this.allowWithoutCredential_ = z7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOauth(OAuthRequirements oAuthRequirements) {
        oAuthRequirements.getClass();
        this.oauth_ = oAuthRequirements;
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRequirements(int i8, AuthRequirement authRequirement) {
        authRequirement.getClass();
        ensureRequirementsIsMutable();
        this.requirements_.set(i8, authRequirement);
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
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0001\u0001\u0007\u0004\u0000\u0001\u0000\u0001Ȉ\u0002ဉ\u0000\u0005\u0007\u0007\u001b", new Object[]{"bitField0_", "selector_", "oauth_", "allowWithoutCredential_", "requirements_", AuthRequirement.class});
            case 3:
                return new AuthenticationRule();
            case 4:
                return new C3211h(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (AuthenticationRule.class) {
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

    public boolean getAllowWithoutCredential() {
        return this.allowWithoutCredential_;
    }

    public OAuthRequirements getOauth() {
        OAuthRequirements oAuthRequirements = this.oauth_;
        return oAuthRequirements == null ? OAuthRequirements.getDefaultInstance() : oAuthRequirements;
    }

    public AuthRequirement getRequirements(int i8) {
        return (AuthRequirement) this.requirements_.get(i8);
    }

    public int getRequirementsCount() {
        return this.requirements_.size();
    }

    public List<AuthRequirement> getRequirementsList() {
        return this.requirements_;
    }

    public InterfaceC3209f getRequirementsOrBuilder(int i8) {
        return (InterfaceC3209f) this.requirements_.get(i8);
    }

    public List<? extends InterfaceC3209f> getRequirementsOrBuilderList() {
        return this.requirements_;
    }

    public String getSelector() {
        return this.selector_;
    }

    public r getSelectorBytes() {
        return r.l(this.selector_);
    }

    public boolean hasOauth() {
        return (this.bitField0_ & 1) != 0;
    }

    public static C3211h newBuilder(AuthenticationRule authenticationRule) {
        return (C3211h) DEFAULT_INSTANCE.createBuilder(authenticationRule);
    }

    public static AuthenticationRule parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (AuthenticationRule) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static AuthenticationRule parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (AuthenticationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static AuthenticationRule parseFrom(r rVar) {
        return (AuthenticationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRequirements(int i8, AuthRequirement authRequirement) {
        authRequirement.getClass();
        ensureRequirementsIsMutable();
        this.requirements_.add(i8, authRequirement);
    }

    public static AuthenticationRule parseFrom(r rVar, O0 o4) {
        return (AuthenticationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static AuthenticationRule parseFrom(byte[] bArr) {
        return (AuthenticationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static AuthenticationRule parseFrom(byte[] bArr, O0 o4) {
        return (AuthenticationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static AuthenticationRule parseFrom(InputStream inputStream) {
        return (AuthenticationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static AuthenticationRule parseFrom(InputStream inputStream, O0 o4) {
        return (AuthenticationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static AuthenticationRule parseFrom(AbstractC2961w abstractC2961w) {
        return (AuthenticationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static AuthenticationRule parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (AuthenticationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
