package com.google.firebase.inappmessaging;

import V4.G;
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
public final class MessagesProto$Button extends AbstractC2909i1 implements R1 {
    public static final int BUTTON_HEX_COLOR_FIELD_NUMBER = 2;
    private static final MessagesProto$Button DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int TEXT_FIELD_NUMBER = 1;
    private int bitField0_;
    private String buttonHexColor_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private MessagesProto$Text text_;

    static {
        MessagesProto$Button messagesProto$Button = new MessagesProto$Button();
        DEFAULT_INSTANCE = messagesProto$Button;
        AbstractC2909i1.registerDefaultInstance(MessagesProto$Button.class, messagesProto$Button);
    }

    private MessagesProto$Button() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearButtonHexColor() {
        this.buttonHexColor_ = getDefaultInstance().getButtonHexColor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearText() {
        this.text_ = null;
        this.bitField0_ &= -2;
    }

    public static MessagesProto$Button getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeText(MessagesProto$Text messagesProto$Text) {
        messagesProto$Text.getClass();
        MessagesProto$Text messagesProto$Text2 = this.text_;
        if (messagesProto$Text2 == null || messagesProto$Text2 == MessagesProto$Text.getDefaultInstance()) {
            this.text_ = messagesProto$Text;
        } else {
            M mNewBuilder = MessagesProto$Text.newBuilder(this.text_);
            mNewBuilder.g(messagesProto$Text);
            this.text_ = (MessagesProto$Text) mNewBuilder.k();
        }
        this.bitField0_ |= 1;
    }

    public static G newBuilder() {
        return (G) DEFAULT_INSTANCE.createBuilder();
    }

    public static MessagesProto$Button parseDelimitedFrom(InputStream inputStream) {
        return (MessagesProto$Button) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MessagesProto$Button parseFrom(ByteBuffer byteBuffer) {
        return (MessagesProto$Button) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setButtonHexColor(String str) {
        str.getClass();
        this.buttonHexColor_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setButtonHexColorBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.buttonHexColor_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setText(MessagesProto$Text messagesProto$Text) {
        messagesProto$Text.getClass();
        this.text_ = messagesProto$Text;
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
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002Ȉ", new Object[]{"bitField0_", "text_", "buttonHexColor_"});
            case 3:
                return new MessagesProto$Button();
            case 4:
                return new G(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (MessagesProto$Button.class) {
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

    public String getButtonHexColor() {
        return this.buttonHexColor_;
    }

    public r getButtonHexColorBytes() {
        return r.l(this.buttonHexColor_);
    }

    public MessagesProto$Text getText() {
        MessagesProto$Text messagesProto$Text = this.text_;
        return messagesProto$Text == null ? MessagesProto$Text.getDefaultInstance() : messagesProto$Text;
    }

    public boolean hasText() {
        return (this.bitField0_ & 1) != 0;
    }

    public static G newBuilder(MessagesProto$Button messagesProto$Button) {
        return (G) DEFAULT_INSTANCE.createBuilder(messagesProto$Button);
    }

    public static MessagesProto$Button parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (MessagesProto$Button) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MessagesProto$Button parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (MessagesProto$Button) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static MessagesProto$Button parseFrom(r rVar) {
        return (MessagesProto$Button) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static MessagesProto$Button parseFrom(r rVar, O0 o4) {
        return (MessagesProto$Button) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static MessagesProto$Button parseFrom(byte[] bArr) {
        return (MessagesProto$Button) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static MessagesProto$Button parseFrom(byte[] bArr, O0 o4) {
        return (MessagesProto$Button) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static MessagesProto$Button parseFrom(InputStream inputStream) {
        return (MessagesProto$Button) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MessagesProto$Button parseFrom(InputStream inputStream, O0 o4) {
        return (MessagesProto$Button) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MessagesProto$Button parseFrom(AbstractC2961w abstractC2961w) {
        return (MessagesProto$Button) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static MessagesProto$Button parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (MessagesProto$Button) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
