package com.google.rpc;

import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.K1;
import com.google.protobuf.O0;
import com.google.protobuf.R1;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Map;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class ErrorInfo extends AbstractC2909i1 implements R1 {
    private static final ErrorInfo DEFAULT_INSTANCE;
    public static final int DOMAIN_FIELD_NUMBER = 2;
    public static final int METADATA_FIELD_NUMBER = 3;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int REASON_FIELD_NUMBER = 1;
    private K1 metadata_ = K1.f24267H;
    private String reason_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String domain_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        ErrorInfo errorInfo = new ErrorInfo();
        DEFAULT_INSTANCE = errorInfo;
        AbstractC2909i1.registerDefaultInstance(ErrorInfo.class, errorInfo);
    }

    private ErrorInfo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDomain() {
        this.domain_ = getDefaultInstance().getDomain();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearReason() {
        this.reason_ = getDefaultInstance().getReason();
    }

    public static ErrorInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> getMutableMetadataMap() {
        return internalGetMutableMetadata();
    }

    private K1 internalGetMetadata() {
        return this.metadata_;
    }

    private K1 internalGetMutableMetadata() {
        K1 k8 = this.metadata_;
        if (!k8.f24268G) {
            this.metadata_ = k8.c();
        }
        return this.metadata_;
    }

    public static p114o5.c newBuilder() {
        return (p114o5.c) DEFAULT_INSTANCE.createBuilder();
    }

    public static ErrorInfo parseDelimitedFrom(InputStream inputStream) {
        return (ErrorInfo) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ErrorInfo parseFrom(ByteBuffer byteBuffer) {
        return (ErrorInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDomain(String str) {
        str.getClass();
        this.domain_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDomainBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.domain_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReason(String str) {
        str.getClass();
        this.reason_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReasonBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.reason_ = rVar.t();
    }

    public boolean containsMetadata(String str) {
        str.getClass();
        return internalGetMetadata().containsKey(str);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0001\u0000\u0000\u0001Ȉ\u0002Ȉ\u00032", new Object[]{"reason_", "domain_", "metadata_", p114o5.d.f28008a});
            case 3:
                return new ErrorInfo();
            case 4:
                return new p114o5.c(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (ErrorInfo.class) {
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

    public String getDomain() {
        return this.domain_;
    }

    public r getDomainBytes() {
        return r.l(this.domain_);
    }

    @Deprecated
    public Map<String, String> getMetadata() {
        return getMetadataMap();
    }

    public int getMetadataCount() {
        return internalGetMetadata().size();
    }

    public Map<String, String> getMetadataMap() {
        return Collections.unmodifiableMap(internalGetMetadata());
    }

    public String getMetadataOrDefault(String str, String str2) {
        str.getClass();
        K1 k1InternalGetMetadata = internalGetMetadata();
        return k1InternalGetMetadata.containsKey(str) ? (String) k1InternalGetMetadata.get(str) : str2;
    }

    public String getMetadataOrThrow(String str) {
        str.getClass();
        K1 k1InternalGetMetadata = internalGetMetadata();
        if (k1InternalGetMetadata.containsKey(str)) {
            return (String) k1InternalGetMetadata.get(str);
        }
        throw new IllegalArgumentException();
    }

    public String getReason() {
        return this.reason_;
    }

    public r getReasonBytes() {
        return r.l(this.reason_);
    }

    public static p114o5.c newBuilder(ErrorInfo errorInfo) {
        return (p114o5.c) DEFAULT_INSTANCE.createBuilder(errorInfo);
    }

    public static ErrorInfo parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (ErrorInfo) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static ErrorInfo parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (ErrorInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static ErrorInfo parseFrom(r rVar) {
        return (ErrorInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static ErrorInfo parseFrom(r rVar, O0 o4) {
        return (ErrorInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static ErrorInfo parseFrom(byte[] bArr) {
        return (ErrorInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static ErrorInfo parseFrom(byte[] bArr, O0 o4) {
        return (ErrorInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static ErrorInfo parseFrom(InputStream inputStream) {
        return (ErrorInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ErrorInfo parseFrom(InputStream inputStream, O0 o4) {
        return (ErrorInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static ErrorInfo parseFrom(AbstractC2961w abstractC2961w) {
        return (ErrorInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static ErrorInfo parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (ErrorInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
