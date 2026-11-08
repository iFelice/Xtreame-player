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
import p175w4.H;
import p175w4.I;
import p175w4.J;

/* JADX INFO: loaded from: classes.dex */
public final class JwtLocation extends AbstractC2909i1 implements J {
    private static final JwtLocation DEFAULT_INSTANCE;
    public static final int HEADER_FIELD_NUMBER = 1;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int QUERY_FIELD_NUMBER = 2;
    public static final int VALUE_PREFIX_FIELD_NUMBER = 3;
    private Object in_;
    private int inCase_ = 0;
    private String valuePrefix_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        JwtLocation jwtLocation = new JwtLocation();
        DEFAULT_INSTANCE = jwtLocation;
        AbstractC2909i1.registerDefaultInstance(JwtLocation.class, jwtLocation);
    }

    private JwtLocation() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearHeader() {
        if (this.inCase_ == 1) {
            this.inCase_ = 0;
            this.in_ = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearIn() {
        this.inCase_ = 0;
        this.in_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearQuery() {
        if (this.inCase_ == 2) {
            this.inCase_ = 0;
            this.in_ = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearValuePrefix() {
        this.valuePrefix_ = getDefaultInstance().getValuePrefix();
    }

    public static JwtLocation getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static H newBuilder() {
        return (H) DEFAULT_INSTANCE.createBuilder();
    }

    public static JwtLocation parseDelimitedFrom(InputStream inputStream) {
        return (JwtLocation) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static JwtLocation parseFrom(ByteBuffer byteBuffer) {
        return (JwtLocation) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHeader(String str) {
        str.getClass();
        this.inCase_ = 1;
        this.in_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHeaderBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.in_ = rVar.t();
        this.inCase_ = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setQuery(String str) {
        str.getClass();
        this.inCase_ = 2;
        this.in_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setQueryBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.in_ = rVar.t();
        this.inCase_ = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValuePrefix(String str) {
        str.getClass();
        this.valuePrefix_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValuePrefixBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.valuePrefix_ = rVar.t();
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȼ\u0000\u0002Ȼ\u0000\u0003Ȉ", new Object[]{"in_", "inCase_", "valuePrefix_"});
            case 3:
                return new JwtLocation();
            case 4:
                return new H(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (JwtLocation.class) {
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

    public String getHeader() {
        return this.inCase_ == 1 ? (String) this.in_ : HttpUrl.FRAGMENT_ENCODE_SET;
    }

    public r getHeaderBytes() {
        return r.l(this.inCase_ == 1 ? (String) this.in_ : HttpUrl.FRAGMENT_ENCODE_SET);
    }

    public I getInCase() {
        int i8 = this.inCase_;
        if (i8 == 0) {
            return I.f31019I;
        }
        if (i8 == 1) {
            return I.f31017G;
        }
        if (i8 != 2) {
            return null;
        }
        return I.f31018H;
    }

    public String getQuery() {
        return this.inCase_ == 2 ? (String) this.in_ : HttpUrl.FRAGMENT_ENCODE_SET;
    }

    public r getQueryBytes() {
        return r.l(this.inCase_ == 2 ? (String) this.in_ : HttpUrl.FRAGMENT_ENCODE_SET);
    }

    public String getValuePrefix() {
        return this.valuePrefix_;
    }

    public r getValuePrefixBytes() {
        return r.l(this.valuePrefix_);
    }

    public boolean hasHeader() {
        return this.inCase_ == 1;
    }

    public boolean hasQuery() {
        return this.inCase_ == 2;
    }

    public static H newBuilder(JwtLocation jwtLocation) {
        return (H) DEFAULT_INSTANCE.createBuilder(jwtLocation);
    }

    public static JwtLocation parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (JwtLocation) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static JwtLocation parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (JwtLocation) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static JwtLocation parseFrom(r rVar) {
        return (JwtLocation) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static JwtLocation parseFrom(r rVar, O0 o4) {
        return (JwtLocation) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static JwtLocation parseFrom(byte[] bArr) {
        return (JwtLocation) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static JwtLocation parseFrom(byte[] bArr, O0 o4) {
        return (JwtLocation) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static JwtLocation parseFrom(InputStream inputStream) {
        return (JwtLocation) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static JwtLocation parseFrom(InputStream inputStream, O0 o4) {
        return (JwtLocation) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static JwtLocation parseFrom(AbstractC2961w abstractC2961w) {
        return (JwtLocation) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static JwtLocation parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (JwtLocation) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
