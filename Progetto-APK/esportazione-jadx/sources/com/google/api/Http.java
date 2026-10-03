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
import p175w4.C;
import p175w4.G;

/* JADX INFO: loaded from: classes.dex */
public final class Http extends AbstractC2909i1 implements R1 {
    private static final Http DEFAULT_INSTANCE;
    public static final int FULLY_DECODE_RESERVED_EXPANSION_FIELD_NUMBER = 2;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int RULES_FIELD_NUMBER = 1;
    private boolean fullyDecodeReservedExpansion_;
    private InterfaceC2956u1 rules_ = AbstractC2909i1.emptyProtobufList();

    static {
        Http http = new Http();
        DEFAULT_INSTANCE = http;
        AbstractC2909i1.registerDefaultInstance(Http.class, http);
    }

    private Http() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllRules(Iterable<? extends HttpRule> iterable) {
        ensureRulesIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.rules_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRules(HttpRule httpRule) {
        httpRule.getClass();
        ensureRulesIsMutable();
        this.rules_.add(httpRule);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearFullyDecodeReservedExpansion() {
        this.fullyDecodeReservedExpansion_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRules() {
        this.rules_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureRulesIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.rules_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.rules_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static Http getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C newBuilder() {
        return (C) DEFAULT_INSTANCE.createBuilder();
    }

    public static Http parseDelimitedFrom(InputStream inputStream) {
        return (Http) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Http parseFrom(ByteBuffer byteBuffer) {
        return (Http) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeRules(int i8) {
        ensureRulesIsMutable();
        this.rules_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFullyDecodeReservedExpansion(boolean z7) {
        this.fullyDecodeReservedExpansion_ = z7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRules(int i8, HttpRule httpRule) {
        httpRule.getClass();
        ensureRulesIsMutable();
        this.rules_.set(i8, httpRule);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0007", new Object[]{"rules_", HttpRule.class, "fullyDecodeReservedExpansion_"});
            case 3:
                return new Http();
            case 4:
                return new C(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (Http.class) {
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

    public boolean getFullyDecodeReservedExpansion() {
        return this.fullyDecodeReservedExpansion_;
    }

    public HttpRule getRules(int i8) {
        return (HttpRule) this.rules_.get(i8);
    }

    public int getRulesCount() {
        return this.rules_.size();
    }

    public List<HttpRule> getRulesList() {
        return this.rules_;
    }

    public G getRulesOrBuilder(int i8) {
        return (G) this.rules_.get(i8);
    }

    public List<? extends G> getRulesOrBuilderList() {
        return this.rules_;
    }

    public static C newBuilder(Http http) {
        return (C) DEFAULT_INSTANCE.createBuilder(http);
    }

    public static Http parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (Http) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Http parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (Http) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static Http parseFrom(r rVar) {
        return (Http) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRules(int i8, HttpRule httpRule) {
        httpRule.getClass();
        ensureRulesIsMutable();
        this.rules_.add(i8, httpRule);
    }

    public static Http parseFrom(r rVar, O0 o4) {
        return (Http) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static Http parseFrom(byte[] bArr) {
        return (Http) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Http parseFrom(byte[] bArr, O0 o4) {
        return (Http) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static Http parseFrom(InputStream inputStream) {
        return (Http) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Http parseFrom(InputStream inputStream, O0 o4) {
        return (Http) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Http parseFrom(AbstractC2961w abstractC2961w) {
        return (Http) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static Http parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (Http) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
