package com.google.firebase.inappmessaging;

import V4.F;
import V4.H;
import V4.I;
import V4.J;
import V4.K;
import V4.L;
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
public final class MessagesProto$Content extends AbstractC2909i1 implements R1 {
    public static final int BANNER_FIELD_NUMBER = 1;
    public static final int CARD_FIELD_NUMBER = 4;
    private static final MessagesProto$Content DEFAULT_INSTANCE;
    public static final int IMAGE_ONLY_FIELD_NUMBER = 3;
    public static final int MODAL_FIELD_NUMBER = 2;
    private static volatile InterfaceC2894e2 PARSER;
    private int messageDetailsCase_ = 0;
    private Object messageDetails_;

    static {
        MessagesProto$Content messagesProto$Content = new MessagesProto$Content();
        DEFAULT_INSTANCE = messagesProto$Content;
        AbstractC2909i1.registerDefaultInstance(MessagesProto$Content.class, messagesProto$Content);
    }

    private MessagesProto$Content() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBanner() {
        if (this.messageDetailsCase_ == 1) {
            this.messageDetailsCase_ = 0;
            this.messageDetails_ = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCard() {
        if (this.messageDetailsCase_ == 4) {
            this.messageDetailsCase_ = 0;
            this.messageDetails_ = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearImageOnly() {
        if (this.messageDetailsCase_ == 3) {
            this.messageDetailsCase_ = 0;
            this.messageDetails_ = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMessageDetails() {
        this.messageDetailsCase_ = 0;
        this.messageDetails_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearModal() {
        if (this.messageDetailsCase_ == 2) {
            this.messageDetailsCase_ = 0;
            this.messageDetails_ = null;
        }
    }

    public static MessagesProto$Content getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeBanner(MessagesProto$BannerMessage messagesProto$BannerMessage) {
        messagesProto$BannerMessage.getClass();
        if (this.messageDetailsCase_ != 1 || this.messageDetails_ == MessagesProto$BannerMessage.getDefaultInstance()) {
            this.messageDetails_ = messagesProto$BannerMessage;
        } else {
            F fNewBuilder = MessagesProto$BannerMessage.newBuilder((MessagesProto$BannerMessage) this.messageDetails_);
            fNewBuilder.g(messagesProto$BannerMessage);
            this.messageDetails_ = fNewBuilder.k();
        }
        this.messageDetailsCase_ = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeCard(MessagesProto$CardMessage messagesProto$CardMessage) {
        messagesProto$CardMessage.getClass();
        if (this.messageDetailsCase_ != 4 || this.messageDetails_ == MessagesProto$CardMessage.getDefaultInstance()) {
            this.messageDetails_ = messagesProto$CardMessage;
        } else {
            H hNewBuilder = MessagesProto$CardMessage.newBuilder((MessagesProto$CardMessage) this.messageDetails_);
            hNewBuilder.g(messagesProto$CardMessage);
            this.messageDetails_ = hNewBuilder.k();
        }
        this.messageDetailsCase_ = 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeImageOnly(MessagesProto$ImageOnlyMessage messagesProto$ImageOnlyMessage) {
        messagesProto$ImageOnlyMessage.getClass();
        if (this.messageDetailsCase_ != 3 || this.messageDetails_ == MessagesProto$ImageOnlyMessage.getDefaultInstance()) {
            this.messageDetails_ = messagesProto$ImageOnlyMessage;
        } else {
            K kNewBuilder = MessagesProto$ImageOnlyMessage.newBuilder((MessagesProto$ImageOnlyMessage) this.messageDetails_);
            kNewBuilder.g(messagesProto$ImageOnlyMessage);
            this.messageDetails_ = kNewBuilder.k();
        }
        this.messageDetailsCase_ = 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeModal(MessagesProto$ModalMessage messagesProto$ModalMessage) {
        messagesProto$ModalMessage.getClass();
        if (this.messageDetailsCase_ != 2 || this.messageDetails_ == MessagesProto$ModalMessage.getDefaultInstance()) {
            this.messageDetails_ = messagesProto$ModalMessage;
        } else {
            L lNewBuilder = MessagesProto$ModalMessage.newBuilder((MessagesProto$ModalMessage) this.messageDetails_);
            lNewBuilder.g(messagesProto$ModalMessage);
            this.messageDetails_ = lNewBuilder.k();
        }
        this.messageDetailsCase_ = 2;
    }

    public static I newBuilder() {
        return (I) DEFAULT_INSTANCE.createBuilder();
    }

    public static MessagesProto$Content parseDelimitedFrom(InputStream inputStream) {
        return (MessagesProto$Content) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MessagesProto$Content parseFrom(ByteBuffer byteBuffer) {
        return (MessagesProto$Content) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBanner(MessagesProto$BannerMessage messagesProto$BannerMessage) {
        messagesProto$BannerMessage.getClass();
        this.messageDetails_ = messagesProto$BannerMessage;
        this.messageDetailsCase_ = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCard(MessagesProto$CardMessage messagesProto$CardMessage) {
        messagesProto$CardMessage.getClass();
        this.messageDetails_ = messagesProto$CardMessage;
        this.messageDetailsCase_ = 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImageOnly(MessagesProto$ImageOnlyMessage messagesProto$ImageOnlyMessage) {
        messagesProto$ImageOnlyMessage.getClass();
        this.messageDetails_ = messagesProto$ImageOnlyMessage;
        this.messageDetailsCase_ = 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setModal(MessagesProto$ModalMessage messagesProto$ModalMessage) {
        messagesProto$ModalMessage.getClass();
        this.messageDetails_ = messagesProto$ModalMessage;
        this.messageDetailsCase_ = 2;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000", new Object[]{"messageDetails_", "messageDetailsCase_", MessagesProto$BannerMessage.class, MessagesProto$ModalMessage.class, MessagesProto$ImageOnlyMessage.class, MessagesProto$CardMessage.class});
            case 3:
                return new MessagesProto$Content();
            case 4:
                return new I(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (MessagesProto$Content.class) {
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

    public MessagesProto$BannerMessage getBanner() {
        return this.messageDetailsCase_ == 1 ? (MessagesProto$BannerMessage) this.messageDetails_ : MessagesProto$BannerMessage.getDefaultInstance();
    }

    public MessagesProto$CardMessage getCard() {
        return this.messageDetailsCase_ == 4 ? (MessagesProto$CardMessage) this.messageDetails_ : MessagesProto$CardMessage.getDefaultInstance();
    }

    public MessagesProto$ImageOnlyMessage getImageOnly() {
        return this.messageDetailsCase_ == 3 ? (MessagesProto$ImageOnlyMessage) this.messageDetails_ : MessagesProto$ImageOnlyMessage.getDefaultInstance();
    }

    public J getMessageDetailsCase() {
        int i8 = this.messageDetailsCase_;
        if (i8 == 0) {
            return J.f7122K;
        }
        if (i8 == 1) {
            return J.f7118G;
        }
        if (i8 == 2) {
            return J.f7119H;
        }
        if (i8 == 3) {
            return J.f7120I;
        }
        if (i8 != 4) {
            return null;
        }
        return J.f7121J;
    }

    public MessagesProto$ModalMessage getModal() {
        return this.messageDetailsCase_ == 2 ? (MessagesProto$ModalMessage) this.messageDetails_ : MessagesProto$ModalMessage.getDefaultInstance();
    }

    public boolean hasBanner() {
        return this.messageDetailsCase_ == 1;
    }

    public boolean hasCard() {
        return this.messageDetailsCase_ == 4;
    }

    public boolean hasImageOnly() {
        return this.messageDetailsCase_ == 3;
    }

    public boolean hasModal() {
        return this.messageDetailsCase_ == 2;
    }

    public static I newBuilder(MessagesProto$Content messagesProto$Content) {
        return (I) DEFAULT_INSTANCE.createBuilder(messagesProto$Content);
    }

    public static MessagesProto$Content parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (MessagesProto$Content) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MessagesProto$Content parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (MessagesProto$Content) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static MessagesProto$Content parseFrom(r rVar) {
        return (MessagesProto$Content) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static MessagesProto$Content parseFrom(r rVar, O0 o4) {
        return (MessagesProto$Content) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static MessagesProto$Content parseFrom(byte[] bArr) {
        return (MessagesProto$Content) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static MessagesProto$Content parseFrom(byte[] bArr, O0 o4) {
        return (MessagesProto$Content) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static MessagesProto$Content parseFrom(InputStream inputStream) {
        return (MessagesProto$Content) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MessagesProto$Content parseFrom(InputStream inputStream, O0 o4) {
        return (MessagesProto$Content) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MessagesProto$Content parseFrom(AbstractC2961w abstractC2961w) {
        return (MessagesProto$Content) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static MessagesProto$Content parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (MessagesProto$Content) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
