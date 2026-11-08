package com.google.firebase.inappmessaging;

import V4.E;
import V4.K;
import com.google.protobuf.AbstractC2879b;
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
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class MessagesProto$ImageOnlyMessage extends AbstractC2909i1 implements R1 {
    public static final int ACTION_FIELD_NUMBER = 2;
    private static final MessagesProto$ImageOnlyMessage DEFAULT_INSTANCE;
    public static final int IMAGE_URL_FIELD_NUMBER = 1;
    private static volatile InterfaceC2894e2 PARSER;
    private MessagesProto$Action action_;
    private int bitField0_;
    private String imageUrl_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        MessagesProto$ImageOnlyMessage messagesProto$ImageOnlyMessage = new MessagesProto$ImageOnlyMessage();
        DEFAULT_INSTANCE = messagesProto$ImageOnlyMessage;
        AbstractC2909i1.registerDefaultInstance(MessagesProto$ImageOnlyMessage.class, messagesProto$ImageOnlyMessage);
    }

    private MessagesProto$ImageOnlyMessage() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAction() {
        this.action_ = null;
        this.bitField0_ &= -2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearImageUrl() {
        this.imageUrl_ = getDefaultInstance().getImageUrl();
    }

    public static MessagesProto$ImageOnlyMessage getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeAction(MessagesProto$Action messagesProto$Action) {
        messagesProto$Action.getClass();
        MessagesProto$Action messagesProto$Action2 = this.action_;
        if (messagesProto$Action2 == null || messagesProto$Action2 == MessagesProto$Action.getDefaultInstance()) {
            this.action_ = messagesProto$Action;
        } else {
            E eNewBuilder = MessagesProto$Action.newBuilder(this.action_);
            eNewBuilder.g(messagesProto$Action);
            this.action_ = (MessagesProto$Action) eNewBuilder.k();
        }
        this.bitField0_ |= 1;
    }

    public static K newBuilder() {
        return (K) DEFAULT_INSTANCE.createBuilder();
    }

    public static MessagesProto$ImageOnlyMessage parseDelimitedFrom(InputStream inputStream) {
        return (MessagesProto$ImageOnlyMessage) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MessagesProto$ImageOnlyMessage parseFrom(ByteBuffer byteBuffer) {
        return (MessagesProto$ImageOnlyMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAction(MessagesProto$Action messagesProto$Action) {
        messagesProto$Action.getClass();
        this.action_ = messagesProto$Action;
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImageUrl(String str) {
        str.getClass();
        this.imageUrl_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImageUrlBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.imageUrl_ = rVar.t();
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000", new Object[]{"bitField0_", "imageUrl_", "action_"});
            case 3:
                return new MessagesProto$ImageOnlyMessage();
            case 4:
                return new K(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (MessagesProto$ImageOnlyMessage.class) {
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

    public MessagesProto$Action getAction() {
        MessagesProto$Action messagesProto$Action = this.action_;
        return messagesProto$Action == null ? MessagesProto$Action.getDefaultInstance() : messagesProto$Action;
    }

    public String getImageUrl() {
        return this.imageUrl_;
    }

    public r getImageUrlBytes() {
        return r.l(this.imageUrl_);
    }

    public boolean hasAction() {
        return (this.bitField0_ & 1) != 0;
    }

    public static K newBuilder(MessagesProto$ImageOnlyMessage messagesProto$ImageOnlyMessage) {
        return (K) DEFAULT_INSTANCE.createBuilder(messagesProto$ImageOnlyMessage);
    }

    public static MessagesProto$ImageOnlyMessage parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (MessagesProto$ImageOnlyMessage) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MessagesProto$ImageOnlyMessage parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (MessagesProto$ImageOnlyMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static MessagesProto$ImageOnlyMessage parseFrom(r rVar) {
        return (MessagesProto$ImageOnlyMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static MessagesProto$ImageOnlyMessage parseFrom(r rVar, O0 o4) {
        return (MessagesProto$ImageOnlyMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static MessagesProto$ImageOnlyMessage parseFrom(byte[] bArr) {
        return (MessagesProto$ImageOnlyMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static MessagesProto$ImageOnlyMessage parseFrom(byte[] bArr, O0 o4) {
        return (MessagesProto$ImageOnlyMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static MessagesProto$ImageOnlyMessage parseFrom(InputStream inputStream) {
        return (MessagesProto$ImageOnlyMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MessagesProto$ImageOnlyMessage parseFrom(InputStream inputStream, O0 o4) {
        return (MessagesProto$ImageOnlyMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MessagesProto$ImageOnlyMessage parseFrom(AbstractC2961w abstractC2961w) {
        return (MessagesProto$ImageOnlyMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static MessagesProto$ImageOnlyMessage parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (MessagesProto$ImageOnlyMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
