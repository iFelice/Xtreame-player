package com.google.rpc;

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
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class DebugInfo extends AbstractC2909i1 implements R1 {
    private static final DebugInfo DEFAULT_INSTANCE;
    public static final int DETAIL_FIELD_NUMBER = 2;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int STACK_ENTRIES_FIELD_NUMBER = 1;
    private InterfaceC2956u1 stackEntries_ = AbstractC2909i1.emptyProtobufList();
    private String detail_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        DebugInfo debugInfo = new DebugInfo();
        DEFAULT_INSTANCE = debugInfo;
        AbstractC2909i1.registerDefaultInstance(DebugInfo.class, debugInfo);
    }

    private DebugInfo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllStackEntries(Iterable<String> iterable) {
        ensureStackEntriesIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.stackEntries_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addStackEntries(String str) {
        str.getClass();
        ensureStackEntriesIsMutable();
        this.stackEntries_.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addStackEntriesBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        ensureStackEntriesIsMutable();
        this.stackEntries_.add(rVar.t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDetail() {
        this.detail_ = getDefaultInstance().getDetail();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearStackEntries() {
        this.stackEntries_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureStackEntriesIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.stackEntries_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.stackEntries_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static DebugInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static p114o5.b newBuilder() {
        return (p114o5.b) DEFAULT_INSTANCE.createBuilder();
    }

    public static DebugInfo parseDelimitedFrom(InputStream inputStream) {
        return (DebugInfo) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DebugInfo parseFrom(ByteBuffer byteBuffer) {
        return (DebugInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDetail(String str) {
        str.getClass();
        this.detail_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDetailBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.detail_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStackEntries(int i8, String str) {
        str.getClass();
        ensureStackEntriesIsMutable();
        this.stackEntries_.set(i8, str);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ț\u0002Ȉ", new Object[]{"stackEntries_", "detail_"});
            case 3:
                return new DebugInfo();
            case 4:
                return new p114o5.b(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (DebugInfo.class) {
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

    public String getDetail() {
        return this.detail_;
    }

    public r getDetailBytes() {
        return r.l(this.detail_);
    }

    public String getStackEntries(int i8) {
        return (String) this.stackEntries_.get(i8);
    }

    public r getStackEntriesBytes(int i8) {
        return r.l((String) this.stackEntries_.get(i8));
    }

    public int getStackEntriesCount() {
        return this.stackEntries_.size();
    }

    public List<String> getStackEntriesList() {
        return this.stackEntries_;
    }

    public static p114o5.b newBuilder(DebugInfo debugInfo) {
        return (p114o5.b) DEFAULT_INSTANCE.createBuilder(debugInfo);
    }

    public static DebugInfo parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (DebugInfo) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static DebugInfo parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (DebugInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static DebugInfo parseFrom(r rVar) {
        return (DebugInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static DebugInfo parseFrom(r rVar, O0 o4) {
        return (DebugInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static DebugInfo parseFrom(byte[] bArr) {
        return (DebugInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static DebugInfo parseFrom(byte[] bArr, O0 o4) {
        return (DebugInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static DebugInfo parseFrom(InputStream inputStream) {
        return (DebugInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DebugInfo parseFrom(InputStream inputStream, O0 o4) {
        return (DebugInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static DebugInfo parseFrom(AbstractC2961w abstractC2961w) {
        return (DebugInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static DebugInfo parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (DebugInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
