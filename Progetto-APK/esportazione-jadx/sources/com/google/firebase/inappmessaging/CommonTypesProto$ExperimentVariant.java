package com.google.firebase.inappmessaging;

import V4.C0360h;
import V4.I;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.O0;
import com.google.protobuf.R1;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class CommonTypesProto$ExperimentVariant extends AbstractC2909i1 implements R1 {
    public static final int CONTENT_FIELD_NUMBER = 2;
    private static final CommonTypesProto$ExperimentVariant DEFAULT_INSTANCE;
    public static final int INDEX_FIELD_NUMBER = 1;
    private static volatile InterfaceC2894e2 PARSER;
    private int bitField0_;
    private MessagesProto$Content content_;
    private int index_;

    static {
        CommonTypesProto$ExperimentVariant commonTypesProto$ExperimentVariant = new CommonTypesProto$ExperimentVariant();
        DEFAULT_INSTANCE = commonTypesProto$ExperimentVariant;
        AbstractC2909i1.registerDefaultInstance(CommonTypesProto$ExperimentVariant.class, commonTypesProto$ExperimentVariant);
    }

    private CommonTypesProto$ExperimentVariant() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearContent() {
        this.content_ = null;
        this.bitField0_ &= -2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearIndex() {
        this.index_ = 0;
    }

    public static CommonTypesProto$ExperimentVariant getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeContent(MessagesProto$Content messagesProto$Content) {
        messagesProto$Content.getClass();
        MessagesProto$Content messagesProto$Content2 = this.content_;
        if (messagesProto$Content2 == null || messagesProto$Content2 == MessagesProto$Content.getDefaultInstance()) {
            this.content_ = messagesProto$Content;
        } else {
            I iNewBuilder = MessagesProto$Content.newBuilder(this.content_);
            iNewBuilder.g(messagesProto$Content);
            this.content_ = (MessagesProto$Content) iNewBuilder.k();
        }
        this.bitField0_ |= 1;
    }

    public static C0360h newBuilder() {
        return (C0360h) DEFAULT_INSTANCE.createBuilder();
    }

    public static CommonTypesProto$ExperimentVariant parseDelimitedFrom(InputStream inputStream) {
        return (CommonTypesProto$ExperimentVariant) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CommonTypesProto$ExperimentVariant parseFrom(ByteBuffer byteBuffer) {
        return (CommonTypesProto$ExperimentVariant) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setContent(MessagesProto$Content messagesProto$Content) {
        messagesProto$Content.getClass();
        this.content_ = messagesProto$Content;
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIndex(int i8) {
        this.index_ = i8;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002ဉ\u0000", new Object[]{"bitField0_", "index_", "content_"});
            case 3:
                return new CommonTypesProto$ExperimentVariant();
            case 4:
                return new C0360h(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (CommonTypesProto$ExperimentVariant.class) {
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

    public MessagesProto$Content getContent() {
        MessagesProto$Content messagesProto$Content = this.content_;
        return messagesProto$Content == null ? MessagesProto$Content.getDefaultInstance() : messagesProto$Content;
    }

    public int getIndex() {
        return this.index_;
    }

    public boolean hasContent() {
        return (this.bitField0_ & 1) != 0;
    }

    public static C0360h newBuilder(CommonTypesProto$ExperimentVariant commonTypesProto$ExperimentVariant) {
        return (C0360h) DEFAULT_INSTANCE.createBuilder(commonTypesProto$ExperimentVariant);
    }

    public static CommonTypesProto$ExperimentVariant parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (CommonTypesProto$ExperimentVariant) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CommonTypesProto$ExperimentVariant parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (CommonTypesProto$ExperimentVariant) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static CommonTypesProto$ExperimentVariant parseFrom(r rVar) {
        return (CommonTypesProto$ExperimentVariant) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static CommonTypesProto$ExperimentVariant parseFrom(r rVar, O0 o4) {
        return (CommonTypesProto$ExperimentVariant) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static CommonTypesProto$ExperimentVariant parseFrom(byte[] bArr) {
        return (CommonTypesProto$ExperimentVariant) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CommonTypesProto$ExperimentVariant parseFrom(byte[] bArr, O0 o4) {
        return (CommonTypesProto$ExperimentVariant) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static CommonTypesProto$ExperimentVariant parseFrom(InputStream inputStream) {
        return (CommonTypesProto$ExperimentVariant) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CommonTypesProto$ExperimentVariant parseFrom(InputStream inputStream, O0 o4) {
        return (CommonTypesProto$ExperimentVariant) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CommonTypesProto$ExperimentVariant parseFrom(AbstractC2961w abstractC2961w) {
        return (CommonTypesProto$ExperimentVariant) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static CommonTypesProto$ExperimentVariant parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (CommonTypesProto$ExperimentVariant) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
