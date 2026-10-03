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
import p175w4.C3227y;
import p175w4.InterfaceC3228z;

/* JADX INFO: loaded from: classes.dex */
public final class DocumentationRule extends AbstractC2909i1 implements InterfaceC3228z {
    private static final DocumentationRule DEFAULT_INSTANCE;
    public static final int DEPRECATION_DESCRIPTION_FIELD_NUMBER = 3;
    public static final int DESCRIPTION_FIELD_NUMBER = 2;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int SELECTOR_FIELD_NUMBER = 1;
    private String selector_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String description_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String deprecationDescription_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        DocumentationRule documentationRule = new DocumentationRule();
        DEFAULT_INSTANCE = documentationRule;
        AbstractC2909i1.registerDefaultInstance(DocumentationRule.class, documentationRule);
    }

    private DocumentationRule() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDeprecationDescription() {
        this.deprecationDescription_ = getDefaultInstance().getDeprecationDescription();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDescription() {
        this.description_ = getDefaultInstance().getDescription();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelector() {
        this.selector_ = getDefaultInstance().getSelector();
    }

    public static DocumentationRule getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3227y newBuilder() {
        return (C3227y) DEFAULT_INSTANCE.createBuilder();
    }

    public static DocumentationRule parseDelimitedFrom(InputStream inputStream) {
        return (DocumentationRule) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DocumentationRule parseFrom(ByteBuffer byteBuffer) {
        return (DocumentationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDeprecationDescription(String str) {
        str.getClass();
        this.deprecationDescription_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDeprecationDescriptionBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.deprecationDescription_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDescription(String str) {
        str.getClass();
        this.description_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDescriptionBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.description_ = rVar.t();
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
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"selector_", "description_", "deprecationDescription_"});
            case 3:
                return new DocumentationRule();
            case 4:
                return new C3227y(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (DocumentationRule.class) {
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

    public String getDeprecationDescription() {
        return this.deprecationDescription_;
    }

    public r getDeprecationDescriptionBytes() {
        return r.l(this.deprecationDescription_);
    }

    public String getDescription() {
        return this.description_;
    }

    public r getDescriptionBytes() {
        return r.l(this.description_);
    }

    public String getSelector() {
        return this.selector_;
    }

    public r getSelectorBytes() {
        return r.l(this.selector_);
    }

    public static C3227y newBuilder(DocumentationRule documentationRule) {
        return (C3227y) DEFAULT_INSTANCE.createBuilder(documentationRule);
    }

    public static DocumentationRule parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (DocumentationRule) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static DocumentationRule parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (DocumentationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static DocumentationRule parseFrom(r rVar) {
        return (DocumentationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static DocumentationRule parseFrom(r rVar, O0 o4) {
        return (DocumentationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static DocumentationRule parseFrom(byte[] bArr) {
        return (DocumentationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static DocumentationRule parseFrom(byte[] bArr, O0 o4) {
        return (DocumentationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static DocumentationRule parseFrom(InputStream inputStream) {
        return (DocumentationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DocumentationRule parseFrom(InputStream inputStream, O0 o4) {
        return (DocumentationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static DocumentationRule parseFrom(AbstractC2961w abstractC2961w) {
        return (DocumentationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static DocumentationRule parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (DocumentationRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
