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
import p175w4.C3221s;
import p175w4.InterfaceC3222t;

/* JADX INFO: loaded from: classes.dex */
public final class ContextRule extends AbstractC2909i1 implements InterfaceC3222t {
    public static final int ALLOWED_REQUEST_EXTENSIONS_FIELD_NUMBER = 4;
    public static final int ALLOWED_RESPONSE_EXTENSIONS_FIELD_NUMBER = 5;
    private static final ContextRule DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int PROVIDED_FIELD_NUMBER = 3;
    public static final int REQUESTED_FIELD_NUMBER = 2;
    public static final int SELECTOR_FIELD_NUMBER = 1;
    private String selector_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2956u1 requested_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 provided_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 allowedRequestExtensions_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 allowedResponseExtensions_ = AbstractC2909i1.emptyProtobufList();

    static {
        ContextRule contextRule = new ContextRule();
        DEFAULT_INSTANCE = contextRule;
        AbstractC2909i1.registerDefaultInstance(ContextRule.class, contextRule);
    }

    private ContextRule() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllAllowedRequestExtensions(Iterable<String> iterable) {
        ensureAllowedRequestExtensionsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.allowedRequestExtensions_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllAllowedResponseExtensions(Iterable<String> iterable) {
        ensureAllowedResponseExtensionsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.allowedResponseExtensions_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllProvided(Iterable<String> iterable) {
        ensureProvidedIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.provided_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllRequested(Iterable<String> iterable) {
        ensureRequestedIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.requested_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllowedRequestExtensions(String str) {
        str.getClass();
        ensureAllowedRequestExtensionsIsMutable();
        this.allowedRequestExtensions_.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllowedRequestExtensionsBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        ensureAllowedRequestExtensionsIsMutable();
        this.allowedRequestExtensions_.add(rVar.t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllowedResponseExtensions(String str) {
        str.getClass();
        ensureAllowedResponseExtensionsIsMutable();
        this.allowedResponseExtensions_.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllowedResponseExtensionsBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        ensureAllowedResponseExtensionsIsMutable();
        this.allowedResponseExtensions_.add(rVar.t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addProvided(String str) {
        str.getClass();
        ensureProvidedIsMutable();
        this.provided_.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addProvidedBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        ensureProvidedIsMutable();
        this.provided_.add(rVar.t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRequested(String str) {
        str.getClass();
        ensureRequestedIsMutable();
        this.requested_.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRequestedBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        ensureRequestedIsMutable();
        this.requested_.add(rVar.t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAllowedRequestExtensions() {
        this.allowedRequestExtensions_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAllowedResponseExtensions() {
        this.allowedResponseExtensions_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearProvided() {
        this.provided_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRequested() {
        this.requested_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelector() {
        this.selector_ = getDefaultInstance().getSelector();
    }

    private void ensureAllowedRequestExtensionsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.allowedRequestExtensions_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.allowedRequestExtensions_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureAllowedResponseExtensionsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.allowedResponseExtensions_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.allowedResponseExtensions_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureProvidedIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.provided_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.provided_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureRequestedIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.requested_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.requested_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static ContextRule getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3221s newBuilder() {
        return (C3221s) DEFAULT_INSTANCE.createBuilder();
    }

    public static ContextRule parseDelimitedFrom(InputStream inputStream) {
        return (ContextRule) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ContextRule parseFrom(ByteBuffer byteBuffer) {
        return (ContextRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAllowedRequestExtensions(int i8, String str) {
        str.getClass();
        ensureAllowedRequestExtensionsIsMutable();
        this.allowedRequestExtensions_.set(i8, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAllowedResponseExtensions(int i8, String str) {
        str.getClass();
        ensureAllowedResponseExtensionsIsMutable();
        this.allowedResponseExtensions_.set(i8, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProvided(int i8, String str) {
        str.getClass();
        ensureProvidedIsMutable();
        this.provided_.set(i8, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRequested(int i8, String str) {
        str.getClass();
        ensureRequestedIsMutable();
        this.requested_.set(i8, str);
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
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0004\u0000\u0001Ȉ\u0002Ț\u0003Ț\u0004Ț\u0005Ț", new Object[]{"selector_", "requested_", "provided_", "allowedRequestExtensions_", "allowedResponseExtensions_"});
            case 3:
                return new ContextRule();
            case 4:
                return new C3221s(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (ContextRule.class) {
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

    public String getAllowedRequestExtensions(int i8) {
        return (String) this.allowedRequestExtensions_.get(i8);
    }

    public r getAllowedRequestExtensionsBytes(int i8) {
        return r.l((String) this.allowedRequestExtensions_.get(i8));
    }

    public int getAllowedRequestExtensionsCount() {
        return this.allowedRequestExtensions_.size();
    }

    public List<String> getAllowedRequestExtensionsList() {
        return this.allowedRequestExtensions_;
    }

    public String getAllowedResponseExtensions(int i8) {
        return (String) this.allowedResponseExtensions_.get(i8);
    }

    public r getAllowedResponseExtensionsBytes(int i8) {
        return r.l((String) this.allowedResponseExtensions_.get(i8));
    }

    public int getAllowedResponseExtensionsCount() {
        return this.allowedResponseExtensions_.size();
    }

    public List<String> getAllowedResponseExtensionsList() {
        return this.allowedResponseExtensions_;
    }

    public String getProvided(int i8) {
        return (String) this.provided_.get(i8);
    }

    public r getProvidedBytes(int i8) {
        return r.l((String) this.provided_.get(i8));
    }

    public int getProvidedCount() {
        return this.provided_.size();
    }

    public List<String> getProvidedList() {
        return this.provided_;
    }

    public String getRequested(int i8) {
        return (String) this.requested_.get(i8);
    }

    public r getRequestedBytes(int i8) {
        return r.l((String) this.requested_.get(i8));
    }

    public int getRequestedCount() {
        return this.requested_.size();
    }

    public List<String> getRequestedList() {
        return this.requested_;
    }

    public String getSelector() {
        return this.selector_;
    }

    public r getSelectorBytes() {
        return r.l(this.selector_);
    }

    public static C3221s newBuilder(ContextRule contextRule) {
        return (C3221s) DEFAULT_INSTANCE.createBuilder(contextRule);
    }

    public static ContextRule parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (ContextRule) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static ContextRule parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (ContextRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static ContextRule parseFrom(r rVar) {
        return (ContextRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static ContextRule parseFrom(r rVar, O0 o4) {
        return (ContextRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static ContextRule parseFrom(byte[] bArr) {
        return (ContextRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static ContextRule parseFrom(byte[] bArr, O0 o4) {
        return (ContextRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static ContextRule parseFrom(InputStream inputStream) {
        return (ContextRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ContextRule parseFrom(InputStream inputStream, O0 o4) {
        return (ContextRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static ContextRule parseFrom(AbstractC2961w abstractC2961w) {
        return (ContextRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static ContextRule parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (ContextRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
