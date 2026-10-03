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
import com.google.protobuf.R1;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import p175w4.C3210g;
import p175w4.InterfaceC3206d;
import p175w4.InterfaceC3212i;

/* JADX INFO: loaded from: classes.dex */
public final class Authentication extends AbstractC2909i1 implements R1 {
    private static final Authentication DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int PROVIDERS_FIELD_NUMBER = 4;
    public static final int RULES_FIELD_NUMBER = 3;
    private InterfaceC2956u1 rules_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 providers_ = AbstractC2909i1.emptyProtobufList();

    static {
        Authentication authentication = new Authentication();
        DEFAULT_INSTANCE = authentication;
        AbstractC2909i1.registerDefaultInstance(Authentication.class, authentication);
    }

    private Authentication() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllProviders(Iterable<? extends AuthProvider> iterable) {
        ensureProvidersIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.providers_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllRules(Iterable<? extends AuthenticationRule> iterable) {
        ensureRulesIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.rules_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addProviders(AuthProvider authProvider) {
        authProvider.getClass();
        ensureProvidersIsMutable();
        this.providers_.add(authProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRules(AuthenticationRule authenticationRule) {
        authenticationRule.getClass();
        ensureRulesIsMutable();
        this.rules_.add(authenticationRule);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearProviders() {
        this.providers_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRules() {
        this.rules_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureProvidersIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.providers_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.providers_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureRulesIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.rules_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.rules_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static Authentication getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3210g newBuilder() {
        return (C3210g) DEFAULT_INSTANCE.createBuilder();
    }

    public static Authentication parseDelimitedFrom(InputStream inputStream) {
        return (Authentication) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Authentication parseFrom(ByteBuffer byteBuffer) {
        return (Authentication) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeProviders(int i8) {
        ensureProvidersIsMutable();
        this.providers_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeRules(int i8) {
        ensureRulesIsMutable();
        this.rules_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProviders(int i8, AuthProvider authProvider) {
        authProvider.getClass();
        ensureProvidersIsMutable();
        this.providers_.set(i8, authProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRules(int i8, AuthenticationRule authenticationRule) {
        authenticationRule.getClass();
        ensureRulesIsMutable();
        this.rules_.set(i8, authenticationRule);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0003\u0004\u0002\u0000\u0002\u0000\u0003\u001b\u0004\u001b", new Object[]{"rules_", AuthenticationRule.class, "providers_", AuthProvider.class});
            case 3:
                return new Authentication();
            case 4:
                return new C3210g(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (Authentication.class) {
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

    public AuthProvider getProviders(int i8) {
        return (AuthProvider) this.providers_.get(i8);
    }

    public int getProvidersCount() {
        return this.providers_.size();
    }

    public List<AuthProvider> getProvidersList() {
        return this.providers_;
    }

    public InterfaceC3206d getProvidersOrBuilder(int i8) {
        return (InterfaceC3206d) this.providers_.get(i8);
    }

    public List<? extends InterfaceC3206d> getProvidersOrBuilderList() {
        return this.providers_;
    }

    public AuthenticationRule getRules(int i8) {
        return (AuthenticationRule) this.rules_.get(i8);
    }

    public int getRulesCount() {
        return this.rules_.size();
    }

    public List<AuthenticationRule> getRulesList() {
        return this.rules_;
    }

    public InterfaceC3212i getRulesOrBuilder(int i8) {
        return (InterfaceC3212i) this.rules_.get(i8);
    }

    public List<? extends InterfaceC3212i> getRulesOrBuilderList() {
        return this.rules_;
    }

    public static C3210g newBuilder(Authentication authentication) {
        return (C3210g) DEFAULT_INSTANCE.createBuilder(authentication);
    }

    public static Authentication parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (Authentication) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Authentication parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (Authentication) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static Authentication parseFrom(r rVar) {
        return (Authentication) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addProviders(int i8, AuthProvider authProvider) {
        authProvider.getClass();
        ensureProvidersIsMutable();
        this.providers_.add(i8, authProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRules(int i8, AuthenticationRule authenticationRule) {
        authenticationRule.getClass();
        ensureRulesIsMutable();
        this.rules_.add(i8, authenticationRule);
    }

    public static Authentication parseFrom(r rVar, O0 o4) {
        return (Authentication) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static Authentication parseFrom(byte[] bArr) {
        return (Authentication) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Authentication parseFrom(byte[] bArr, O0 o4) {
        return (Authentication) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static Authentication parseFrom(InputStream inputStream) {
        return (Authentication) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Authentication parseFrom(InputStream inputStream, O0 o4) {
        return (Authentication) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Authentication parseFrom(AbstractC2961w abstractC2961w) {
        return (Authentication) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static Authentication parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (Authentication) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
