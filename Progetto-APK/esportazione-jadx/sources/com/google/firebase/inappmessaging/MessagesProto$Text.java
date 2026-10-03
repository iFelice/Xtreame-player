package com.google.firebase.inappmessaging;

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
public final class MessagesProto$Text extends AbstractC2909i1 implements R1 {
    private static final MessagesProto$Text DEFAULT_INSTANCE;
    public static final int HEX_COLOR_FIELD_NUMBER = 2;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int TEXT_FIELD_NUMBER = 1;
    private String text_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String hexColor_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        MessagesProto$Text messagesProto$Text = new MessagesProto$Text();
        DEFAULT_INSTANCE = messagesProto$Text;
        AbstractC2909i1.registerDefaultInstance(MessagesProto$Text.class, messagesProto$Text);
    }

    private MessagesProto$Text() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearHexColor() {
        this.hexColor_ = getDefaultInstance().getHexColor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearText() {
        this.text_ = getDefaultInstance().getText();
    }

    public static MessagesProto$Text getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static M newBuilder() {
        return (M) DEFAULT_INSTANCE.createBuilder();
    }

    public static MessagesProto$Text parseDelimitedFrom(InputStream inputStream) {
        return (MessagesProto$Text) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MessagesProto$Text parseFrom(ByteBuffer byteBuffer) {
        return (MessagesProto$Text) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHexColor(String str) {
        str.getClass();
        this.hexColor_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHexColorBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.hexColor_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setText(String str) {
        str.getClass();
        this.text_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTextBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.text_ = rVar.t();
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ", new Object[]{"text_", "hexColor_"});
            case 3:
                return new MessagesProto$Text();
            case 4:
                return new M(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (MessagesProto$Text.class) {
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

    public String getHexColor() {
        return this.hexColor_;
    }

    public r getHexColorBytes() {
        return r.l(this.hexColor_);
    }

    public String getText() {
        return this.text_;
    }

    public r getTextBytes() {
        return r.l(this.text_);
    }

    public static M newBuilder(MessagesProto$Text messagesProto$Text) {
        return (M) DEFAULT_INSTANCE.createBuilder(messagesProto$Text);
    }

    public static MessagesProto$Text parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (MessagesProto$Text) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MessagesProto$Text parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (MessagesProto$Text) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static MessagesProto$Text parseFrom(r rVar) {
        return (MessagesProto$Text) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static MessagesProto$Text parseFrom(r rVar, O0 o4) {
        return (MessagesProto$Text) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static MessagesProto$Text parseFrom(byte[] bArr) {
        return (MessagesProto$Text) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static MessagesProto$Text parseFrom(byte[] bArr, O0 o4) {
        return (MessagesProto$Text) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static MessagesProto$Text parseFrom(InputStream inputStream) {
        return (MessagesProto$Text) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MessagesProto$Text parseFrom(InputStream inputStream, O0 o4) {
        return (MessagesProto$Text) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MessagesProto$Text parseFrom(AbstractC2961w abstractC2961w) {
        return (MessagesProto$Text) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static MessagesProto$Text parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (MessagesProto$Text) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
