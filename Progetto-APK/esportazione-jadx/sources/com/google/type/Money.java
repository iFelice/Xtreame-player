package com.google.type;

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
import p122p5.h;

/* JADX INFO: loaded from: classes2.dex */
public final class Money extends AbstractC2909i1 implements R1 {
    public static final int CURRENCY_CODE_FIELD_NUMBER = 1;
    private static final Money DEFAULT_INSTANCE;
    public static final int NANOS_FIELD_NUMBER = 3;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int UNITS_FIELD_NUMBER = 2;
    private String currencyCode_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private int nanos_;
    private long units_;

    static {
        Money money = new Money();
        DEFAULT_INSTANCE = money;
        AbstractC2909i1.registerDefaultInstance(Money.class, money);
    }

    private Money() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCurrencyCode() {
        this.currencyCode_ = getDefaultInstance().getCurrencyCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNanos() {
        this.nanos_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearUnits() {
        this.units_ = 0L;
    }

    public static Money getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static h newBuilder() {
        return (h) DEFAULT_INSTANCE.createBuilder();
    }

    public static Money parseDelimitedFrom(InputStream inputStream) {
        return (Money) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Money parseFrom(ByteBuffer byteBuffer) {
        return (Money) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrencyCode(String str) {
        str.getClass();
        this.currencyCode_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrencyCodeBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.currencyCode_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNanos(int i8) {
        this.nanos_ = i8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUnits(long j8) {
        this.units_ = j8;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\u0002\u0003\u0004", new Object[]{"currencyCode_", "units_", "nanos_"});
            case 3:
                return new Money();
            case 4:
                return new h(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (Money.class) {
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

    public String getCurrencyCode() {
        return this.currencyCode_;
    }

    public r getCurrencyCodeBytes() {
        return r.l(this.currencyCode_);
    }

    public int getNanos() {
        return this.nanos_;
    }

    public long getUnits() {
        return this.units_;
    }

    public static h newBuilder(Money money) {
        return (h) DEFAULT_INSTANCE.createBuilder(money);
    }

    public static Money parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (Money) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Money parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (Money) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static Money parseFrom(r rVar) {
        return (Money) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static Money parseFrom(r rVar, O0 o4) {
        return (Money) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static Money parseFrom(byte[] bArr) {
        return (Money) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Money parseFrom(byte[] bArr, O0 o4) {
        return (Money) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static Money parseFrom(InputStream inputStream) {
        return (Money) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Money parseFrom(InputStream inputStream, O0 o4) {
        return (Money) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Money parseFrom(AbstractC2961w abstractC2961w) {
        return (Money) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static Money parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (Money) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
