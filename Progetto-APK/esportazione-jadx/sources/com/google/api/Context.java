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
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import p175w4.InterfaceC3222t;
import p175w4.r;

/* JADX INFO: loaded from: classes.dex */
public final class Context extends AbstractC2909i1 implements R1 {
    private static final Context DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int RULES_FIELD_NUMBER = 1;
    private InterfaceC2956u1 rules_ = AbstractC2909i1.emptyProtobufList();

    static {
        Context context = new Context();
        DEFAULT_INSTANCE = context;
        AbstractC2909i1.registerDefaultInstance(Context.class, context);
    }

    private Context() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllRules(Iterable<? extends ContextRule> iterable) {
        ensureRulesIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.rules_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRules(ContextRule contextRule) {
        contextRule.getClass();
        ensureRulesIsMutable();
        this.rules_.add(contextRule);
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

    public static Context getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static r newBuilder() {
        return (r) DEFAULT_INSTANCE.createBuilder();
    }

    public static Context parseDelimitedFrom(InputStream inputStream) {
        return (Context) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Context parseFrom(ByteBuffer byteBuffer) {
        return (Context) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
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
    public void setRules(int i8, ContextRule contextRule) {
        contextRule.getClass();
        ensureRulesIsMutable();
        this.rules_.set(i8, contextRule);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"rules_", ContextRule.class});
            case 3:
                return new Context();
            case 4:
                return new r(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (Context.class) {
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

    public ContextRule getRules(int i8) {
        return (ContextRule) this.rules_.get(i8);
    }

    public int getRulesCount() {
        return this.rules_.size();
    }

    public List<ContextRule> getRulesList() {
        return this.rules_;
    }

    public InterfaceC3222t getRulesOrBuilder(int i8) {
        return (InterfaceC3222t) this.rules_.get(i8);
    }

    public List<? extends InterfaceC3222t> getRulesOrBuilderList() {
        return this.rules_;
    }

    public static r newBuilder(Context context) {
        return (r) DEFAULT_INSTANCE.createBuilder(context);
    }

    public static Context parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (Context) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Context parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (Context) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static Context parseFrom(com.google.protobuf.r rVar) {
        return (Context) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRules(int i8, ContextRule contextRule) {
        contextRule.getClass();
        ensureRulesIsMutable();
        this.rules_.add(i8, contextRule);
    }

    public static Context parseFrom(com.google.protobuf.r rVar, O0 o4) {
        return (Context) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static Context parseFrom(byte[] bArr) {
        return (Context) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Context parseFrom(byte[] bArr, O0 o4) {
        return (Context) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static Context parseFrom(InputStream inputStream) {
        return (Context) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Context parseFrom(InputStream inputStream, O0 o4) {
        return (Context) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Context parseFrom(AbstractC2961w abstractC2961w) {
        return (Context) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static Context parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (Context) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
