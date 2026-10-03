package com.google.api;

import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2883c;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.Any;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.InterfaceC2895f;
import com.google.protobuf.InterfaceC2956u1;
import com.google.protobuf.O0;
import com.google.protobuf.R1;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.HttpUrl;
import p175w4.D;

/* JADX INFO: loaded from: classes.dex */
public final class HttpBody extends AbstractC2909i1 implements R1 {
    public static final int CONTENT_TYPE_FIELD_NUMBER = 1;
    public static final int DATA_FIELD_NUMBER = 2;
    private static final HttpBody DEFAULT_INSTANCE;
    public static final int EXTENSIONS_FIELD_NUMBER = 3;
    private static volatile InterfaceC2894e2 PARSER;
    private String contentType_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private r data_ = r.f24491H;
    private InterfaceC2956u1 extensions_ = AbstractC2909i1.emptyProtobufList();

    static {
        HttpBody httpBody = new HttpBody();
        DEFAULT_INSTANCE = httpBody;
        AbstractC2909i1.registerDefaultInstance(HttpBody.class, httpBody);
    }

    private HttpBody() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllExtensions(Iterable<? extends Any> iterable) {
        ensureExtensionsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.extensions_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addExtensions(Any any) {
        any.getClass();
        ensureExtensionsIsMutable();
        this.extensions_.add(any);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearContentType() {
        this.contentType_ = getDefaultInstance().getContentType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearData() {
        this.data_ = getDefaultInstance().getData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearExtensions() {
        this.extensions_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureExtensionsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.extensions_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.extensions_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static HttpBody getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static D newBuilder() {
        return (D) DEFAULT_INSTANCE.createBuilder();
    }

    public static HttpBody parseDelimitedFrom(InputStream inputStream) {
        return (HttpBody) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static HttpBody parseFrom(ByteBuffer byteBuffer) {
        return (HttpBody) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeExtensions(int i8) {
        ensureExtensionsIsMutable();
        this.extensions_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setContentType(String str) {
        str.getClass();
        this.contentType_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setContentTypeBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.contentType_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setData(r rVar) {
        rVar.getClass();
        this.data_ = rVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExtensions(int i8, Any any) {
        any.getClass();
        ensureExtensionsIsMutable();
        this.extensions_.set(i8, any);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001Ȉ\u0002\n\u0003\u001b", new Object[]{"contentType_", "data_", "extensions_", Any.class});
            case 3:
                return new HttpBody();
            case 4:
                return new D(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (HttpBody.class) {
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

    public String getContentType() {
        return this.contentType_;
    }

    public r getContentTypeBytes() {
        return r.l(this.contentType_);
    }

    public r getData() {
        return this.data_;
    }

    public Any getExtensions(int i8) {
        return (Any) this.extensions_.get(i8);
    }

    public int getExtensionsCount() {
        return this.extensions_.size();
    }

    public List<Any> getExtensionsList() {
        return this.extensions_;
    }

    public InterfaceC2895f getExtensionsOrBuilder(int i8) {
        return (InterfaceC2895f) this.extensions_.get(i8);
    }

    public List<? extends InterfaceC2895f> getExtensionsOrBuilderList() {
        return this.extensions_;
    }

    public static D newBuilder(HttpBody httpBody) {
        return (D) DEFAULT_INSTANCE.createBuilder(httpBody);
    }

    public static HttpBody parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (HttpBody) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static HttpBody parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (HttpBody) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static HttpBody parseFrom(r rVar) {
        return (HttpBody) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addExtensions(int i8, Any any) {
        any.getClass();
        ensureExtensionsIsMutable();
        this.extensions_.add(i8, any);
    }

    public static HttpBody parseFrom(r rVar, O0 o4) {
        return (HttpBody) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static HttpBody parseFrom(byte[] bArr) {
        return (HttpBody) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static HttpBody parseFrom(byte[] bArr, O0 o4) {
        return (HttpBody) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static HttpBody parseFrom(InputStream inputStream) {
        return (HttpBody) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static HttpBody parseFrom(InputStream inputStream, O0 o4) {
        return (HttpBody) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static HttpBody parseFrom(AbstractC2961w abstractC2961w) {
        return (HttpBody) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static HttpBody parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (HttpBody) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
