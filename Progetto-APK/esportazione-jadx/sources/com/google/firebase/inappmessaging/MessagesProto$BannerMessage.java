package com.google.firebase.inappmessaging;

import V4.E;
import V4.F;
import V4.M;
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
public final class MessagesProto$BannerMessage extends AbstractC2909i1 implements R1 {
    public static final int ACTION_FIELD_NUMBER = 4;
    public static final int BACKGROUND_HEX_COLOR_FIELD_NUMBER = 5;
    public static final int BODY_FIELD_NUMBER = 2;
    private static final MessagesProto$BannerMessage DEFAULT_INSTANCE;
    public static final int IMAGE_URL_FIELD_NUMBER = 3;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int TITLE_FIELD_NUMBER = 1;
    private MessagesProto$Action action_;
    private int bitField0_;
    private MessagesProto$Text body_;
    private MessagesProto$Text title_;
    private String imageUrl_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String backgroundHexColor_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        MessagesProto$BannerMessage messagesProto$BannerMessage = new MessagesProto$BannerMessage();
        DEFAULT_INSTANCE = messagesProto$BannerMessage;
        AbstractC2909i1.registerDefaultInstance(MessagesProto$BannerMessage.class, messagesProto$BannerMessage);
    }

    private MessagesProto$BannerMessage() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAction() {
        this.action_ = null;
        this.bitField0_ &= -5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBackgroundHexColor() {
        this.backgroundHexColor_ = getDefaultInstance().getBackgroundHexColor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBody() {
        this.body_ = null;
        this.bitField0_ &= -3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearImageUrl() {
        this.imageUrl_ = getDefaultInstance().getImageUrl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTitle() {
        this.title_ = null;
        this.bitField0_ &= -2;
    }

    public static MessagesProto$BannerMessage getDefaultInstance() {
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
        this.bitField0_ |= 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeBody(MessagesProto$Text messagesProto$Text) {
        messagesProto$Text.getClass();
        MessagesProto$Text messagesProto$Text2 = this.body_;
        if (messagesProto$Text2 == null || messagesProto$Text2 == MessagesProto$Text.getDefaultInstance()) {
            this.body_ = messagesProto$Text;
        } else {
            M mNewBuilder = MessagesProto$Text.newBuilder(this.body_);
            mNewBuilder.g(messagesProto$Text);
            this.body_ = (MessagesProto$Text) mNewBuilder.k();
        }
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeTitle(MessagesProto$Text messagesProto$Text) {
        messagesProto$Text.getClass();
        MessagesProto$Text messagesProto$Text2 = this.title_;
        if (messagesProto$Text2 == null || messagesProto$Text2 == MessagesProto$Text.getDefaultInstance()) {
            this.title_ = messagesProto$Text;
        } else {
            M mNewBuilder = MessagesProto$Text.newBuilder(this.title_);
            mNewBuilder.g(messagesProto$Text);
            this.title_ = (MessagesProto$Text) mNewBuilder.k();
        }
        this.bitField0_ |= 1;
    }

    public static F newBuilder() {
        return (F) DEFAULT_INSTANCE.createBuilder();
    }

    public static MessagesProto$BannerMessage parseDelimitedFrom(InputStream inputStream) {
        return (MessagesProto$BannerMessage) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MessagesProto$BannerMessage parseFrom(ByteBuffer byteBuffer) {
        return (MessagesProto$BannerMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAction(MessagesProto$Action messagesProto$Action) {
        messagesProto$Action.getClass();
        this.action_ = messagesProto$Action;
        this.bitField0_ |= 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBackgroundHexColor(String str) {
        str.getClass();
        this.backgroundHexColor_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBackgroundHexColorBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.backgroundHexColor_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBody(MessagesProto$Text messagesProto$Text) {
        messagesProto$Text.getClass();
        this.body_ = messagesProto$Text;
        this.bitField0_ |= 2;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void setTitle(MessagesProto$Text messagesProto$Text) {
        messagesProto$Text.getClass();
        this.title_ = messagesProto$Text;
        this.bitField0_ |= 1;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003Ȉ\u0004ဉ\u0002\u0005Ȉ", new Object[]{"bitField0_", "title_", "body_", "imageUrl_", "action_", "backgroundHexColor_"});
            case 3:
                return new MessagesProto$BannerMessage();
            case 4:
                return new F(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (MessagesProto$BannerMessage.class) {
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

    public String getBackgroundHexColor() {
        return this.backgroundHexColor_;
    }

    public r getBackgroundHexColorBytes() {
        return r.l(this.backgroundHexColor_);
    }

    public MessagesProto$Text getBody() {
        MessagesProto$Text messagesProto$Text = this.body_;
        return messagesProto$Text == null ? MessagesProto$Text.getDefaultInstance() : messagesProto$Text;
    }

    public String getImageUrl() {
        return this.imageUrl_;
    }

    public r getImageUrlBytes() {
        return r.l(this.imageUrl_);
    }

    public MessagesProto$Text getTitle() {
        MessagesProto$Text messagesProto$Text = this.title_;
        return messagesProto$Text == null ? MessagesProto$Text.getDefaultInstance() : messagesProto$Text;
    }

    public boolean hasAction() {
        return (this.bitField0_ & 4) != 0;
    }

    public boolean hasBody() {
        return (this.bitField0_ & 2) != 0;
    }

    public boolean hasTitle() {
        return (this.bitField0_ & 1) != 0;
    }

    public static F newBuilder(MessagesProto$BannerMessage messagesProto$BannerMessage) {
        return (F) DEFAULT_INSTANCE.createBuilder(messagesProto$BannerMessage);
    }

    public static MessagesProto$BannerMessage parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (MessagesProto$BannerMessage) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MessagesProto$BannerMessage parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (MessagesProto$BannerMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static MessagesProto$BannerMessage parseFrom(r rVar) {
        return (MessagesProto$BannerMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static MessagesProto$BannerMessage parseFrom(r rVar, O0 o4) {
        return (MessagesProto$BannerMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static MessagesProto$BannerMessage parseFrom(byte[] bArr) {
        return (MessagesProto$BannerMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static MessagesProto$BannerMessage parseFrom(byte[] bArr, O0 o4) {
        return (MessagesProto$BannerMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static MessagesProto$BannerMessage parseFrom(InputStream inputStream) {
        return (MessagesProto$BannerMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MessagesProto$BannerMessage parseFrom(InputStream inputStream, O0 o4) {
        return (MessagesProto$BannerMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MessagesProto$BannerMessage parseFrom(AbstractC2961w abstractC2961w) {
        return (MessagesProto$BannerMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static MessagesProto$BannerMessage parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (MessagesProto$BannerMessage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
