package com.google.developers.mobile.targeting.proto;

import F4.a;
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
public final class ClientSignalsProto$AppInstanceClaim extends AbstractC2909i1 implements R1 {
    public static final int APP_INSTANCE_ID_FIELD_NUMBER = 1;
    public static final int APP_INSTANCE_TOKEN_FIELD_NUMBER = 2;
    private static final ClientSignalsProto$AppInstanceClaim DEFAULT_INSTANCE;
    public static final int GMP_APP_ID_FIELD_NUMBER = 3;
    private static volatile InterfaceC2894e2 PARSER;
    private String appInstanceId_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String appInstanceToken_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String gmpAppId_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        ClientSignalsProto$AppInstanceClaim clientSignalsProto$AppInstanceClaim = new ClientSignalsProto$AppInstanceClaim();
        DEFAULT_INSTANCE = clientSignalsProto$AppInstanceClaim;
        AbstractC2909i1.registerDefaultInstance(ClientSignalsProto$AppInstanceClaim.class, clientSignalsProto$AppInstanceClaim);
    }

    private ClientSignalsProto$AppInstanceClaim() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAppInstanceId() {
        this.appInstanceId_ = getDefaultInstance().getAppInstanceId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAppInstanceToken() {
        this.appInstanceToken_ = getDefaultInstance().getAppInstanceToken();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGmpAppId() {
        this.gmpAppId_ = getDefaultInstance().getGmpAppId();
    }

    public static ClientSignalsProto$AppInstanceClaim getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static a newBuilder() {
        return (a) DEFAULT_INSTANCE.createBuilder();
    }

    public static ClientSignalsProto$AppInstanceClaim parseDelimitedFrom(InputStream inputStream) {
        return (ClientSignalsProto$AppInstanceClaim) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ClientSignalsProto$AppInstanceClaim parseFrom(ByteBuffer byteBuffer) {
        return (ClientSignalsProto$AppInstanceClaim) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAppInstanceId(String str) {
        str.getClass();
        this.appInstanceId_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAppInstanceIdBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.appInstanceId_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAppInstanceToken(String str) {
        str.getClass();
        this.appInstanceToken_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAppInstanceTokenBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.appInstanceToken_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGmpAppId(String str) {
        str.getClass();
        this.gmpAppId_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGmpAppIdBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.gmpAppId_ = rVar.t();
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"appInstanceId_", "appInstanceToken_", "gmpAppId_"});
            case 3:
                return new ClientSignalsProto$AppInstanceClaim();
            case 4:
                return new a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (ClientSignalsProto$AppInstanceClaim.class) {
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

    public String getAppInstanceId() {
        return this.appInstanceId_;
    }

    public r getAppInstanceIdBytes() {
        return r.l(this.appInstanceId_);
    }

    public String getAppInstanceToken() {
        return this.appInstanceToken_;
    }

    public r getAppInstanceTokenBytes() {
        return r.l(this.appInstanceToken_);
    }

    public String getGmpAppId() {
        return this.gmpAppId_;
    }

    public r getGmpAppIdBytes() {
        return r.l(this.gmpAppId_);
    }

    public static a newBuilder(ClientSignalsProto$AppInstanceClaim clientSignalsProto$AppInstanceClaim) {
        return (a) DEFAULT_INSTANCE.createBuilder(clientSignalsProto$AppInstanceClaim);
    }

    public static ClientSignalsProto$AppInstanceClaim parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (ClientSignalsProto$AppInstanceClaim) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static ClientSignalsProto$AppInstanceClaim parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (ClientSignalsProto$AppInstanceClaim) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static ClientSignalsProto$AppInstanceClaim parseFrom(r rVar) {
        return (ClientSignalsProto$AppInstanceClaim) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static ClientSignalsProto$AppInstanceClaim parseFrom(r rVar, O0 o4) {
        return (ClientSignalsProto$AppInstanceClaim) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static ClientSignalsProto$AppInstanceClaim parseFrom(byte[] bArr) {
        return (ClientSignalsProto$AppInstanceClaim) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static ClientSignalsProto$AppInstanceClaim parseFrom(byte[] bArr, O0 o4) {
        return (ClientSignalsProto$AppInstanceClaim) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static ClientSignalsProto$AppInstanceClaim parseFrom(InputStream inputStream) {
        return (ClientSignalsProto$AppInstanceClaim) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ClientSignalsProto$AppInstanceClaim parseFrom(InputStream inputStream, O0 o4) {
        return (ClientSignalsProto$AppInstanceClaim) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static ClientSignalsProto$AppInstanceClaim parseFrom(AbstractC2961w abstractC2961w) {
        return (ClientSignalsProto$AppInstanceClaim) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static ClientSignalsProto$AppInstanceClaim parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (ClientSignalsProto$AppInstanceClaim) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
