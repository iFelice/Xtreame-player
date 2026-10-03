package com.google.rpc.context;

import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2883c;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.C2945r2;
import com.google.protobuf.C2957u2;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.InterfaceC2956u1;
import com.google.protobuf.K1;
import com.google.protobuf.O0;
import com.google.protobuf.R1;
import com.google.protobuf.Struct;
import com.google.protobuf.Timestamp;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class AttributeContext extends AbstractC2909i1 implements R1 {
    public static final int API_FIELD_NUMBER = 6;
    private static final AttributeContext DEFAULT_INSTANCE;
    public static final int DESTINATION_FIELD_NUMBER = 2;
    public static final int ORIGIN_FIELD_NUMBER = 7;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int REQUEST_FIELD_NUMBER = 3;
    public static final int RESOURCE_FIELD_NUMBER = 5;
    public static final int RESPONSE_FIELD_NUMBER = 4;
    public static final int SOURCE_FIELD_NUMBER = 1;
    private Api api_;
    private int bitField0_;
    private Peer destination_;
    private Peer origin_;
    private Request request_;
    private Resource resource_;
    private Response response_;
    private Peer source_;

    public static final class Api extends AbstractC2909i1 implements R1 {
        private static final Api DEFAULT_INSTANCE;
        public static final int OPERATION_FIELD_NUMBER = 2;
        private static volatile InterfaceC2894e2 PARSER = null;
        public static final int PROTOCOL_FIELD_NUMBER = 3;
        public static final int SERVICE_FIELD_NUMBER = 1;
        public static final int VERSION_FIELD_NUMBER = 4;
        private String service_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String operation_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String protocol_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String version_ = HttpUrl.FRAGMENT_ENCODE_SET;

        static {
            Api api = new Api();
            DEFAULT_INSTANCE = api;
            AbstractC2909i1.registerDefaultInstance(Api.class, api);
        }

        private Api() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOperation() {
            this.operation_ = getDefaultInstance().getOperation();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearProtocol() {
            this.protocol_ = getDefaultInstance().getProtocol();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearService() {
            this.service_ = getDefaultInstance().getService();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearVersion() {
            this.version_ = getDefaultInstance().getVersion();
        }

        public static Api getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return (a) DEFAULT_INSTANCE.createBuilder();
        }

        public static Api parseDelimitedFrom(InputStream inputStream) {
            return (Api) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Api parseFrom(ByteBuffer byteBuffer) {
            return (Api) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static InterfaceC2894e2 parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOperation(String str) {
            str.getClass();
            this.operation_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOperationBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.operation_ = rVar.t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProtocol(String str) {
            str.getClass();
            this.protocol_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProtocolBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.protocol_ = rVar.t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setService(String str) {
            str.getClass();
            this.service_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setServiceBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.service_ = rVar.t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVersion(String str) {
            str.getClass();
            this.version_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVersionBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.version_ = rVar.t();
        }

        @Override // com.google.protobuf.AbstractC2909i1
        public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
            switch (enumC2905h1.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ", new Object[]{"service_", "operation_", "protocol_", "version_"});
                case 3:
                    return new Api();
                case 4:
                    return new a(DEFAULT_INSTANCE);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    InterfaceC2894e2 c2885c1 = PARSER;
                    if (c2885c1 == null) {
                        synchronized (Api.class) {
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

        public String getOperation() {
            return this.operation_;
        }

        public r getOperationBytes() {
            return r.l(this.operation_);
        }

        public String getProtocol() {
            return this.protocol_;
        }

        public r getProtocolBytes() {
            return r.l(this.protocol_);
        }

        public String getService() {
            return this.service_;
        }

        public r getServiceBytes() {
            return r.l(this.service_);
        }

        public String getVersion() {
            return this.version_;
        }

        public r getVersionBytes() {
            return r.l(this.version_);
        }

        public static a newBuilder(Api api) {
            return (a) DEFAULT_INSTANCE.createBuilder(api);
        }

        public static Api parseDelimitedFrom(InputStream inputStream, O0 o4) {
            return (Api) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Api parseFrom(ByteBuffer byteBuffer, O0 o4) {
            return (Api) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
        }

        public static Api parseFrom(r rVar) {
            return (Api) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
        }

        public static Api parseFrom(r rVar, O0 o4) {
            return (Api) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
        }

        public static Api parseFrom(byte[] bArr) {
            return (Api) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Api parseFrom(byte[] bArr, O0 o4) {
            return (Api) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
        }

        public static Api parseFrom(InputStream inputStream) {
            return (Api) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Api parseFrom(InputStream inputStream, O0 o4) {
            return (Api) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Api parseFrom(AbstractC2961w abstractC2961w) {
            return (Api) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
        }

        public static Api parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
            return (Api) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
        }
    }

    public static final class Auth extends AbstractC2909i1 implements R1 {
        public static final int ACCESS_LEVELS_FIELD_NUMBER = 5;
        public static final int AUDIENCES_FIELD_NUMBER = 2;
        public static final int CLAIMS_FIELD_NUMBER = 4;
        private static final Auth DEFAULT_INSTANCE;
        private static volatile InterfaceC2894e2 PARSER = null;
        public static final int PRESENTER_FIELD_NUMBER = 3;
        public static final int PRINCIPAL_FIELD_NUMBER = 1;
        private int bitField0_;
        private Struct claims_;
        private String principal_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private InterfaceC2956u1 audiences_ = AbstractC2909i1.emptyProtobufList();
        private String presenter_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private InterfaceC2956u1 accessLevels_ = AbstractC2909i1.emptyProtobufList();

        static {
            Auth auth = new Auth();
            DEFAULT_INSTANCE = auth;
            AbstractC2909i1.registerDefaultInstance(Auth.class, auth);
        }

        private Auth() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAccessLevels(String str) {
            str.getClass();
            ensureAccessLevelsIsMutable();
            this.accessLevels_.add(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAccessLevelsBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            ensureAccessLevelsIsMutable();
            this.accessLevels_.add(rVar.t());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllAccessLevels(Iterable<String> iterable) {
            ensureAccessLevelsIsMutable();
            AbstractC2879b.addAll((Iterable) iterable, (List) this.accessLevels_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllAudiences(Iterable<String> iterable) {
            ensureAudiencesIsMutable();
            AbstractC2879b.addAll((Iterable) iterable, (List) this.audiences_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAudiences(String str) {
            str.getClass();
            ensureAudiencesIsMutable();
            this.audiences_.add(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAudiencesBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            ensureAudiencesIsMutable();
            this.audiences_.add(rVar.t());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccessLevels() {
            this.accessLevels_ = AbstractC2909i1.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAudiences() {
            this.audiences_ = AbstractC2909i1.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearClaims() {
            this.claims_ = null;
            this.bitField0_ &= -2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPresenter() {
            this.presenter_ = getDefaultInstance().getPresenter();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPrincipal() {
            this.principal_ = getDefaultInstance().getPrincipal();
        }

        private void ensureAccessLevelsIsMutable() {
            InterfaceC2956u1 interfaceC2956u1 = this.accessLevels_;
            if (((AbstractC2883c) interfaceC2956u1).f24418G) {
                return;
            }
            this.accessLevels_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
        }

        private void ensureAudiencesIsMutable() {
            InterfaceC2956u1 interfaceC2956u1 = this.audiences_;
            if (((AbstractC2883c) interfaceC2956u1).f24418G) {
                return;
            }
            this.audiences_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
        }

        public static Auth getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeClaims(Struct struct) {
            struct.getClass();
            Struct struct2 = this.claims_;
            if (struct2 == null || struct2 == Struct.getDefaultInstance()) {
                this.claims_ = struct;
            } else {
                C2945r2 c2945r2NewBuilder = Struct.newBuilder(this.claims_);
                c2945r2NewBuilder.g(struct);
                this.claims_ = (Struct) c2945r2NewBuilder.k();
            }
            this.bitField0_ |= 1;
        }

        public static b newBuilder() {
            return (b) DEFAULT_INSTANCE.createBuilder();
        }

        public static Auth parseDelimitedFrom(InputStream inputStream) {
            return (Auth) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Auth parseFrom(ByteBuffer byteBuffer) {
            return (Auth) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static InterfaceC2894e2 parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccessLevels(int i8, String str) {
            str.getClass();
            ensureAccessLevelsIsMutable();
            this.accessLevels_.set(i8, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAudiences(int i8, String str) {
            str.getClass();
            ensureAudiencesIsMutable();
            this.audiences_.set(i8, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClaims(Struct struct) {
            struct.getClass();
            this.claims_ = struct;
            this.bitField0_ |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPresenter(String str) {
            str.getClass();
            this.presenter_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPresenterBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.presenter_ = rVar.t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrincipal(String str) {
            str.getClass();
            this.principal_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrincipalBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.principal_ = rVar.t();
        }

        @Override // com.google.protobuf.AbstractC2909i1
        public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
            switch (enumC2905h1.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001Ȉ\u0002Ț\u0003Ȉ\u0004ဉ\u0000\u0005Ț", new Object[]{"bitField0_", "principal_", "audiences_", "presenter_", "claims_", "accessLevels_"});
                case 3:
                    return new Auth();
                case 4:
                    return new b(DEFAULT_INSTANCE);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    InterfaceC2894e2 c2885c1 = PARSER;
                    if (c2885c1 == null) {
                        synchronized (Auth.class) {
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

        public String getAccessLevels(int i8) {
            return (String) this.accessLevels_.get(i8);
        }

        public r getAccessLevelsBytes(int i8) {
            return r.l((String) this.accessLevels_.get(i8));
        }

        public int getAccessLevelsCount() {
            return this.accessLevels_.size();
        }

        public List<String> getAccessLevelsList() {
            return this.accessLevels_;
        }

        public String getAudiences(int i8) {
            return (String) this.audiences_.get(i8);
        }

        public r getAudiencesBytes(int i8) {
            return r.l((String) this.audiences_.get(i8));
        }

        public int getAudiencesCount() {
            return this.audiences_.size();
        }

        public List<String> getAudiencesList() {
            return this.audiences_;
        }

        public Struct getClaims() {
            Struct struct = this.claims_;
            return struct == null ? Struct.getDefaultInstance() : struct;
        }

        public String getPresenter() {
            return this.presenter_;
        }

        public r getPresenterBytes() {
            return r.l(this.presenter_);
        }

        public String getPrincipal() {
            return this.principal_;
        }

        public r getPrincipalBytes() {
            return r.l(this.principal_);
        }

        public boolean hasClaims() {
            return (this.bitField0_ & 1) != 0;
        }

        public static b newBuilder(Auth auth) {
            return (b) DEFAULT_INSTANCE.createBuilder(auth);
        }

        public static Auth parseDelimitedFrom(InputStream inputStream, O0 o4) {
            return (Auth) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Auth parseFrom(ByteBuffer byteBuffer, O0 o4) {
            return (Auth) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
        }

        public static Auth parseFrom(r rVar) {
            return (Auth) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
        }

        public static Auth parseFrom(r rVar, O0 o4) {
            return (Auth) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
        }

        public static Auth parseFrom(byte[] bArr) {
            return (Auth) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Auth parseFrom(byte[] bArr, O0 o4) {
            return (Auth) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
        }

        public static Auth parseFrom(InputStream inputStream) {
            return (Auth) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Auth parseFrom(InputStream inputStream, O0 o4) {
            return (Auth) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Auth parseFrom(AbstractC2961w abstractC2961w) {
            return (Auth) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
        }

        public static Auth parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
            return (Auth) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
        }
    }

    public static final class Peer extends AbstractC2909i1 implements R1 {
        private static final Peer DEFAULT_INSTANCE;
        public static final int IP_FIELD_NUMBER = 1;
        public static final int LABELS_FIELD_NUMBER = 6;
        private static volatile InterfaceC2894e2 PARSER = null;
        public static final int PORT_FIELD_NUMBER = 2;
        public static final int PRINCIPAL_FIELD_NUMBER = 7;
        public static final int REGION_CODE_FIELD_NUMBER = 8;
        private long port_;
        private K1 labels_ = K1.f24267H;
        private String ip_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String principal_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String regionCode_ = HttpUrl.FRAGMENT_ENCODE_SET;

        static {
            Peer peer = new Peer();
            DEFAULT_INSTANCE = peer;
            AbstractC2909i1.registerDefaultInstance(Peer.class, peer);
        }

        private Peer() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearIp() {
            this.ip_ = getDefaultInstance().getIp();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPort() {
            this.port_ = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPrincipal() {
            this.principal_ = getDefaultInstance().getPrincipal();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRegionCode() {
            this.regionCode_ = getDefaultInstance().getRegionCode();
        }

        public static Peer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<String, String> getMutableLabelsMap() {
            return internalGetMutableLabels();
        }

        private K1 internalGetLabels() {
            return this.labels_;
        }

        private K1 internalGetMutableLabels() {
            K1 k8 = this.labels_;
            if (!k8.f24268G) {
                this.labels_ = k8.c();
            }
            return this.labels_;
        }

        public static d newBuilder() {
            return (d) DEFAULT_INSTANCE.createBuilder();
        }

        public static Peer parseDelimitedFrom(InputStream inputStream) {
            return (Peer) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Peer parseFrom(ByteBuffer byteBuffer) {
            return (Peer) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static InterfaceC2894e2 parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIp(String str) {
            str.getClass();
            this.ip_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIpBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.ip_ = rVar.t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPort(long j8) {
            this.port_ = j8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrincipal(String str) {
            str.getClass();
            this.principal_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrincipalBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.principal_ = rVar.t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRegionCode(String str) {
            str.getClass();
            this.regionCode_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRegionCodeBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.regionCode_ = rVar.t();
        }

        public boolean containsLabels(String str) {
            str.getClass();
            return internalGetLabels().containsKey(str);
        }

        @Override // com.google.protobuf.AbstractC2909i1
        public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
            switch (enumC2905h1.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\b\u0005\u0001\u0000\u0000\u0001Ȉ\u0002\u0002\u00062\u0007Ȉ\bȈ", new Object[]{"ip_", "port_", "labels_", e.f24554a, "principal_", "regionCode_"});
                case 3:
                    return new Peer();
                case 4:
                    return new d(DEFAULT_INSTANCE);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    InterfaceC2894e2 c2885c1 = PARSER;
                    if (c2885c1 == null) {
                        synchronized (Peer.class) {
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

        public String getIp() {
            return this.ip_;
        }

        public r getIpBytes() {
            return r.l(this.ip_);
        }

        @Deprecated
        public Map<String, String> getLabels() {
            return getLabelsMap();
        }

        public int getLabelsCount() {
            return internalGetLabels().size();
        }

        public Map<String, String> getLabelsMap() {
            return Collections.unmodifiableMap(internalGetLabels());
        }

        public String getLabelsOrDefault(String str, String str2) {
            str.getClass();
            K1 k1InternalGetLabels = internalGetLabels();
            return k1InternalGetLabels.containsKey(str) ? (String) k1InternalGetLabels.get(str) : str2;
        }

        public String getLabelsOrThrow(String str) {
            str.getClass();
            K1 k1InternalGetLabels = internalGetLabels();
            if (k1InternalGetLabels.containsKey(str)) {
                return (String) k1InternalGetLabels.get(str);
            }
            throw new IllegalArgumentException();
        }

        public long getPort() {
            return this.port_;
        }

        public String getPrincipal() {
            return this.principal_;
        }

        public r getPrincipalBytes() {
            return r.l(this.principal_);
        }

        public String getRegionCode() {
            return this.regionCode_;
        }

        public r getRegionCodeBytes() {
            return r.l(this.regionCode_);
        }

        public static d newBuilder(Peer peer) {
            return (d) DEFAULT_INSTANCE.createBuilder(peer);
        }

        public static Peer parseDelimitedFrom(InputStream inputStream, O0 o4) {
            return (Peer) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Peer parseFrom(ByteBuffer byteBuffer, O0 o4) {
            return (Peer) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
        }

        public static Peer parseFrom(r rVar) {
            return (Peer) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
        }

        public static Peer parseFrom(r rVar, O0 o4) {
            return (Peer) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
        }

        public static Peer parseFrom(byte[] bArr) {
            return (Peer) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Peer parseFrom(byte[] bArr, O0 o4) {
            return (Peer) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
        }

        public static Peer parseFrom(InputStream inputStream) {
            return (Peer) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Peer parseFrom(InputStream inputStream, O0 o4) {
            return (Peer) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Peer parseFrom(AbstractC2961w abstractC2961w) {
            return (Peer) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
        }

        public static Peer parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
            return (Peer) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
        }
    }

    public static final class Request extends AbstractC2909i1 implements R1 {
        public static final int AUTH_FIELD_NUMBER = 13;
        private static final Request DEFAULT_INSTANCE;
        public static final int HEADERS_FIELD_NUMBER = 3;
        public static final int HOST_FIELD_NUMBER = 5;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int METHOD_FIELD_NUMBER = 2;
        private static volatile InterfaceC2894e2 PARSER = null;
        public static final int PATH_FIELD_NUMBER = 4;
        public static final int PROTOCOL_FIELD_NUMBER = 11;
        public static final int QUERY_FIELD_NUMBER = 7;
        public static final int REASON_FIELD_NUMBER = 12;
        public static final int SCHEME_FIELD_NUMBER = 6;
        public static final int SIZE_FIELD_NUMBER = 10;
        public static final int TIME_FIELD_NUMBER = 9;
        private Auth auth_;
        private int bitField0_;
        private long size_;
        private Timestamp time_;
        private K1 headers_ = K1.f24267H;
        private String id_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String method_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String path_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String host_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String scheme_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String query_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String protocol_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String reason_ = HttpUrl.FRAGMENT_ENCODE_SET;

        static {
            Request request = new Request();
            DEFAULT_INSTANCE = request;
            AbstractC2909i1.registerDefaultInstance(Request.class, request);
        }

        private Request() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAuth() {
            this.auth_ = null;
            this.bitField0_ &= -3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearHost() {
            this.host_ = getDefaultInstance().getHost();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearId() {
            this.id_ = getDefaultInstance().getId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMethod() {
            this.method_ = getDefaultInstance().getMethod();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPath() {
            this.path_ = getDefaultInstance().getPath();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearProtocol() {
            this.protocol_ = getDefaultInstance().getProtocol();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearQuery() {
            this.query_ = getDefaultInstance().getQuery();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReason() {
            this.reason_ = getDefaultInstance().getReason();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearScheme() {
            this.scheme_ = getDefaultInstance().getScheme();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSize() {
            this.size_ = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTime() {
            this.time_ = null;
            this.bitField0_ &= -2;
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<String, String> getMutableHeadersMap() {
            return internalGetMutableHeaders();
        }

        private K1 internalGetHeaders() {
            return this.headers_;
        }

        private K1 internalGetMutableHeaders() {
            K1 k8 = this.headers_;
            if (!k8.f24268G) {
                this.headers_ = k8.c();
            }
            return this.headers_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAuth(Auth auth) {
            auth.getClass();
            Auth auth2 = this.auth_;
            if (auth2 == null || auth2 == Auth.getDefaultInstance()) {
                this.auth_ = auth;
            } else {
                b bVarNewBuilder = Auth.newBuilder(this.auth_);
                bVarNewBuilder.g(auth);
                this.auth_ = (Auth) bVarNewBuilder.k();
            }
            this.bitField0_ |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTime(Timestamp timestamp) {
            timestamp.getClass();
            Timestamp timestamp2 = this.time_;
            if (timestamp2 == null || timestamp2 == Timestamp.getDefaultInstance()) {
                this.time_ = timestamp;
            } else {
                C2957u2 c2957u2NewBuilder = Timestamp.newBuilder(this.time_);
                c2957u2NewBuilder.g(timestamp);
                this.time_ = (Timestamp) c2957u2NewBuilder.k();
            }
            this.bitField0_ |= 1;
        }

        public static f newBuilder() {
            return (f) DEFAULT_INSTANCE.createBuilder();
        }

        public static Request parseDelimitedFrom(InputStream inputStream) {
            return (Request) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseFrom(ByteBuffer byteBuffer) {
            return (Request) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static InterfaceC2894e2 parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAuth(Auth auth) {
            auth.getClass();
            this.auth_ = auth;
            this.bitField0_ |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHost(String str) {
            str.getClass();
            this.host_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHostBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.host_ = rVar.t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setId(String str) {
            str.getClass();
            this.id_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIdBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.id_ = rVar.t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMethod(String str) {
            str.getClass();
            this.method_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMethodBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.method_ = rVar.t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPath(String str) {
            str.getClass();
            this.path_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPathBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.path_ = rVar.t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProtocol(String str) {
            str.getClass();
            this.protocol_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProtocolBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.protocol_ = rVar.t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setQuery(String str) {
            str.getClass();
            this.query_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setQueryBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.query_ = rVar.t();
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

        /* JADX INFO: Access modifiers changed from: private */
        public void setScheme(String str) {
            str.getClass();
            this.scheme_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSchemeBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.scheme_ = rVar.t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSize(long j8) {
            this.size_ = j8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTime(Timestamp timestamp) {
            timestamp.getClass();
            this.time_ = timestamp;
            this.bitField0_ |= 1;
        }

        public boolean containsHeaders(String str) {
            str.getClass();
            return internalGetHeaders().containsKey(str);
        }

        @Override // com.google.protobuf.AbstractC2909i1
        public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
            switch (enumC2905h1.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\f\u0000\u0001\u0001\r\f\u0001\u0000\u0000\u0001Ȉ\u0002Ȉ\u00032\u0004Ȉ\u0005Ȉ\u0006Ȉ\u0007Ȉ\tဉ\u0000\n\u0002\u000bȈ\fȈ\rဉ\u0001", new Object[]{"bitField0_", "id_", "method_", "headers_", g.f24555a, "path_", "host_", "scheme_", "query_", "time_", "size_", "protocol_", "reason_", "auth_"});
                case 3:
                    return new Request();
                case 4:
                    return new f(DEFAULT_INSTANCE);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    InterfaceC2894e2 c2885c1 = PARSER;
                    if (c2885c1 == null) {
                        synchronized (Request.class) {
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

        public Auth getAuth() {
            Auth auth = this.auth_;
            return auth == null ? Auth.getDefaultInstance() : auth;
        }

        @Deprecated
        public Map<String, String> getHeaders() {
            return getHeadersMap();
        }

        public int getHeadersCount() {
            return internalGetHeaders().size();
        }

        public Map<String, String> getHeadersMap() {
            return Collections.unmodifiableMap(internalGetHeaders());
        }

        public String getHeadersOrDefault(String str, String str2) {
            str.getClass();
            K1 k1InternalGetHeaders = internalGetHeaders();
            return k1InternalGetHeaders.containsKey(str) ? (String) k1InternalGetHeaders.get(str) : str2;
        }

        public String getHeadersOrThrow(String str) {
            str.getClass();
            K1 k1InternalGetHeaders = internalGetHeaders();
            if (k1InternalGetHeaders.containsKey(str)) {
                return (String) k1InternalGetHeaders.get(str);
            }
            throw new IllegalArgumentException();
        }

        public String getHost() {
            return this.host_;
        }

        public r getHostBytes() {
            return r.l(this.host_);
        }

        public String getId() {
            return this.id_;
        }

        public r getIdBytes() {
            return r.l(this.id_);
        }

        public String getMethod() {
            return this.method_;
        }

        public r getMethodBytes() {
            return r.l(this.method_);
        }

        public String getPath() {
            return this.path_;
        }

        public r getPathBytes() {
            return r.l(this.path_);
        }

        public String getProtocol() {
            return this.protocol_;
        }

        public r getProtocolBytes() {
            return r.l(this.protocol_);
        }

        public String getQuery() {
            return this.query_;
        }

        public r getQueryBytes() {
            return r.l(this.query_);
        }

        public String getReason() {
            return this.reason_;
        }

        public r getReasonBytes() {
            return r.l(this.reason_);
        }

        public String getScheme() {
            return this.scheme_;
        }

        public r getSchemeBytes() {
            return r.l(this.scheme_);
        }

        public long getSize() {
            return this.size_;
        }

        public Timestamp getTime() {
            Timestamp timestamp = this.time_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public boolean hasAuth() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasTime() {
            return (this.bitField0_ & 1) != 0;
        }

        public static f newBuilder(Request request) {
            return (f) DEFAULT_INSTANCE.createBuilder(request);
        }

        public static Request parseDelimitedFrom(InputStream inputStream, O0 o4) {
            return (Request) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Request parseFrom(ByteBuffer byteBuffer, O0 o4) {
            return (Request) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
        }

        public static Request parseFrom(r rVar) {
            return (Request) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
        }

        public static Request parseFrom(r rVar, O0 o4) {
            return (Request) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
        }

        public static Request parseFrom(byte[] bArr) {
            return (Request) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Request parseFrom(byte[] bArr, O0 o4) {
            return (Request) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
        }

        public static Request parseFrom(InputStream inputStream) {
            return (Request) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseFrom(InputStream inputStream, O0 o4) {
            return (Request) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Request parseFrom(AbstractC2961w abstractC2961w) {
            return (Request) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
        }

        public static Request parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
            return (Request) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
        }
    }

    public static final class Resource extends AbstractC2909i1 implements R1 {
        private static final Resource DEFAULT_INSTANCE;
        public static final int LABELS_FIELD_NUMBER = 4;
        public static final int NAME_FIELD_NUMBER = 2;
        private static volatile InterfaceC2894e2 PARSER = null;
        public static final int SERVICE_FIELD_NUMBER = 1;
        public static final int TYPE_FIELD_NUMBER = 3;
        private K1 labels_ = K1.f24267H;
        private String service_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String name_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String type_ = HttpUrl.FRAGMENT_ENCODE_SET;

        static {
            Resource resource = new Resource();
            DEFAULT_INSTANCE = resource;
            AbstractC2909i1.registerDefaultInstance(Resource.class, resource);
        }

        private Resource() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearName() {
            this.name_ = getDefaultInstance().getName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearService() {
            this.service_ = getDefaultInstance().getService();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearType() {
            this.type_ = getDefaultInstance().getType();
        }

        public static Resource getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<String, String> getMutableLabelsMap() {
            return internalGetMutableLabels();
        }

        private K1 internalGetLabels() {
            return this.labels_;
        }

        private K1 internalGetMutableLabels() {
            K1 k8 = this.labels_;
            if (!k8.f24268G) {
                this.labels_ = k8.c();
            }
            return this.labels_;
        }

        public static h newBuilder() {
            return (h) DEFAULT_INSTANCE.createBuilder();
        }

        public static Resource parseDelimitedFrom(InputStream inputStream) {
            return (Resource) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Resource parseFrom(ByteBuffer byteBuffer) {
            return (Resource) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static InterfaceC2894e2 parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setName(String str) {
            str.getClass();
            this.name_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNameBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.name_ = rVar.t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setService(String str) {
            str.getClass();
            this.service_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setServiceBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.service_ = rVar.t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setType(String str) {
            str.getClass();
            this.type_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTypeBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.type_ = rVar.t();
        }

        public boolean containsLabels(String str) {
            str.getClass();
            return internalGetLabels().containsKey(str);
        }

        @Override // com.google.protobuf.AbstractC2909i1
        public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
            switch (enumC2905h1.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u00042", new Object[]{"service_", "name_", "type_", "labels_", i.f24556a});
                case 3:
                    return new Resource();
                case 4:
                    return new h(DEFAULT_INSTANCE);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    InterfaceC2894e2 c2885c1 = PARSER;
                    if (c2885c1 == null) {
                        synchronized (Resource.class) {
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

        @Deprecated
        public Map<String, String> getLabels() {
            return getLabelsMap();
        }

        public int getLabelsCount() {
            return internalGetLabels().size();
        }

        public Map<String, String> getLabelsMap() {
            return Collections.unmodifiableMap(internalGetLabels());
        }

        public String getLabelsOrDefault(String str, String str2) {
            str.getClass();
            K1 k1InternalGetLabels = internalGetLabels();
            return k1InternalGetLabels.containsKey(str) ? (String) k1InternalGetLabels.get(str) : str2;
        }

        public String getLabelsOrThrow(String str) {
            str.getClass();
            K1 k1InternalGetLabels = internalGetLabels();
            if (k1InternalGetLabels.containsKey(str)) {
                return (String) k1InternalGetLabels.get(str);
            }
            throw new IllegalArgumentException();
        }

        public String getName() {
            return this.name_;
        }

        public r getNameBytes() {
            return r.l(this.name_);
        }

        public String getService() {
            return this.service_;
        }

        public r getServiceBytes() {
            return r.l(this.service_);
        }

        public String getType() {
            return this.type_;
        }

        public r getTypeBytes() {
            return r.l(this.type_);
        }

        public static h newBuilder(Resource resource) {
            return (h) DEFAULT_INSTANCE.createBuilder(resource);
        }

        public static Resource parseDelimitedFrom(InputStream inputStream, O0 o4) {
            return (Resource) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Resource parseFrom(ByteBuffer byteBuffer, O0 o4) {
            return (Resource) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
        }

        public static Resource parseFrom(r rVar) {
            return (Resource) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
        }

        public static Resource parseFrom(r rVar, O0 o4) {
            return (Resource) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
        }

        public static Resource parseFrom(byte[] bArr) {
            return (Resource) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Resource parseFrom(byte[] bArr, O0 o4) {
            return (Resource) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
        }

        public static Resource parseFrom(InputStream inputStream) {
            return (Resource) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Resource parseFrom(InputStream inputStream, O0 o4) {
            return (Resource) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Resource parseFrom(AbstractC2961w abstractC2961w) {
            return (Resource) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
        }

        public static Resource parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
            return (Resource) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
        }
    }

    public static final class Response extends AbstractC2909i1 implements R1 {
        public static final int CODE_FIELD_NUMBER = 1;
        private static final Response DEFAULT_INSTANCE;
        public static final int HEADERS_FIELD_NUMBER = 3;
        private static volatile InterfaceC2894e2 PARSER = null;
        public static final int SIZE_FIELD_NUMBER = 2;
        public static final int TIME_FIELD_NUMBER = 4;
        private int bitField0_;
        private long code_;
        private K1 headers_ = K1.f24267H;
        private long size_;
        private Timestamp time_;

        static {
            Response response = new Response();
            DEFAULT_INSTANCE = response;
            AbstractC2909i1.registerDefaultInstance(Response.class, response);
        }

        private Response() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCode() {
            this.code_ = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSize() {
            this.size_ = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTime() {
            this.time_ = null;
            this.bitField0_ &= -2;
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<String, String> getMutableHeadersMap() {
            return internalGetMutableHeaders();
        }

        private K1 internalGetHeaders() {
            return this.headers_;
        }

        private K1 internalGetMutableHeaders() {
            K1 k8 = this.headers_;
            if (!k8.f24268G) {
                this.headers_ = k8.c();
            }
            return this.headers_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTime(Timestamp timestamp) {
            timestamp.getClass();
            Timestamp timestamp2 = this.time_;
            if (timestamp2 == null || timestamp2 == Timestamp.getDefaultInstance()) {
                this.time_ = timestamp;
            } else {
                C2957u2 c2957u2NewBuilder = Timestamp.newBuilder(this.time_);
                c2957u2NewBuilder.g(timestamp);
                this.time_ = (Timestamp) c2957u2NewBuilder.k();
            }
            this.bitField0_ |= 1;
        }

        public static j newBuilder() {
            return (j) DEFAULT_INSTANCE.createBuilder();
        }

        public static Response parseDelimitedFrom(InputStream inputStream) {
            return (Response) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseFrom(ByteBuffer byteBuffer) {
            return (Response) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static InterfaceC2894e2 parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCode(long j8) {
            this.code_ = j8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSize(long j8) {
            this.size_ = j8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTime(Timestamp timestamp) {
            timestamp.getClass();
            this.time_ = timestamp;
            this.bitField0_ |= 1;
        }

        public boolean containsHeaders(String str) {
            str.getClass();
            return internalGetHeaders().containsKey(str);
        }

        @Override // com.google.protobuf.AbstractC2909i1
        public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
            switch (enumC2905h1.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0001\u0000\u0000\u0001\u0002\u0002\u0002\u00032\u0004ဉ\u0000", new Object[]{"bitField0_", "code_", "size_", "headers_", k.f24557a, "time_"});
                case 3:
                    return new Response();
                case 4:
                    return new j(DEFAULT_INSTANCE);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    InterfaceC2894e2 c2885c1 = PARSER;
                    if (c2885c1 == null) {
                        synchronized (Response.class) {
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

        public long getCode() {
            return this.code_;
        }

        @Deprecated
        public Map<String, String> getHeaders() {
            return getHeadersMap();
        }

        public int getHeadersCount() {
            return internalGetHeaders().size();
        }

        public Map<String, String> getHeadersMap() {
            return Collections.unmodifiableMap(internalGetHeaders());
        }

        public String getHeadersOrDefault(String str, String str2) {
            str.getClass();
            K1 k1InternalGetHeaders = internalGetHeaders();
            return k1InternalGetHeaders.containsKey(str) ? (String) k1InternalGetHeaders.get(str) : str2;
        }

        public String getHeadersOrThrow(String str) {
            str.getClass();
            K1 k1InternalGetHeaders = internalGetHeaders();
            if (k1InternalGetHeaders.containsKey(str)) {
                return (String) k1InternalGetHeaders.get(str);
            }
            throw new IllegalArgumentException();
        }

        public long getSize() {
            return this.size_;
        }

        public Timestamp getTime() {
            Timestamp timestamp = this.time_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public boolean hasTime() {
            return (this.bitField0_ & 1) != 0;
        }

        public static j newBuilder(Response response) {
            return (j) DEFAULT_INSTANCE.createBuilder(response);
        }

        public static Response parseDelimitedFrom(InputStream inputStream, O0 o4) {
            return (Response) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Response parseFrom(ByteBuffer byteBuffer, O0 o4) {
            return (Response) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
        }

        public static Response parseFrom(r rVar) {
            return (Response) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
        }

        public static Response parseFrom(r rVar, O0 o4) {
            return (Response) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
        }

        public static Response parseFrom(byte[] bArr) {
            return (Response) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Response parseFrom(byte[] bArr, O0 o4) {
            return (Response) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
        }

        public static Response parseFrom(InputStream inputStream) {
            return (Response) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseFrom(InputStream inputStream, O0 o4) {
            return (Response) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Response parseFrom(AbstractC2961w abstractC2961w) {
            return (Response) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
        }

        public static Response parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
            return (Response) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
        }
    }

    static {
        AttributeContext attributeContext = new AttributeContext();
        DEFAULT_INSTANCE = attributeContext;
        AbstractC2909i1.registerDefaultInstance(AttributeContext.class, attributeContext);
    }

    private AttributeContext() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearApi() {
        this.api_ = null;
        this.bitField0_ &= -65;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDestination() {
        this.destination_ = null;
        this.bitField0_ &= -5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearOrigin() {
        this.origin_ = null;
        this.bitField0_ &= -2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRequest() {
        this.request_ = null;
        this.bitField0_ &= -9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearResource() {
        this.resource_ = null;
        this.bitField0_ &= -33;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearResponse() {
        this.response_ = null;
        this.bitField0_ &= -17;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSource() {
        this.source_ = null;
        this.bitField0_ &= -3;
    }

    public static AttributeContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeApi(Api api) {
        api.getClass();
        Api api2 = this.api_;
        if (api2 == null || api2 == Api.getDefaultInstance()) {
            this.api_ = api;
        } else {
            a aVarNewBuilder = Api.newBuilder(this.api_);
            aVarNewBuilder.g(api);
            this.api_ = (Api) aVarNewBuilder.k();
        }
        this.bitField0_ |= 64;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeDestination(Peer peer) {
        peer.getClass();
        Peer peer2 = this.destination_;
        if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
            this.destination_ = peer;
        } else {
            d dVarNewBuilder = Peer.newBuilder(this.destination_);
            dVarNewBuilder.g(peer);
            this.destination_ = (Peer) dVarNewBuilder.k();
        }
        this.bitField0_ |= 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeOrigin(Peer peer) {
        peer.getClass();
        Peer peer2 = this.origin_;
        if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
            this.origin_ = peer;
        } else {
            d dVarNewBuilder = Peer.newBuilder(this.origin_);
            dVarNewBuilder.g(peer);
            this.origin_ = (Peer) dVarNewBuilder.k();
        }
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeRequest(Request request) {
        request.getClass();
        Request request2 = this.request_;
        if (request2 == null || request2 == Request.getDefaultInstance()) {
            this.request_ = request;
        } else {
            f fVarNewBuilder = Request.newBuilder(this.request_);
            fVarNewBuilder.g(request);
            this.request_ = (Request) fVarNewBuilder.k();
        }
        this.bitField0_ |= 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeResource(Resource resource) {
        resource.getClass();
        Resource resource2 = this.resource_;
        if (resource2 == null || resource2 == Resource.getDefaultInstance()) {
            this.resource_ = resource;
        } else {
            h hVarNewBuilder = Resource.newBuilder(this.resource_);
            hVarNewBuilder.g(resource);
            this.resource_ = (Resource) hVarNewBuilder.k();
        }
        this.bitField0_ |= 32;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeResponse(Response response) {
        response.getClass();
        Response response2 = this.response_;
        if (response2 == null || response2 == Response.getDefaultInstance()) {
            this.response_ = response;
        } else {
            j jVarNewBuilder = Response.newBuilder(this.response_);
            jVarNewBuilder.g(response);
            this.response_ = (Response) jVarNewBuilder.k();
        }
        this.bitField0_ |= 16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeSource(Peer peer) {
        peer.getClass();
        Peer peer2 = this.source_;
        if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
            this.source_ = peer;
        } else {
            d dVarNewBuilder = Peer.newBuilder(this.source_);
            dVarNewBuilder.g(peer);
            this.source_ = (Peer) dVarNewBuilder.k();
        }
        this.bitField0_ |= 2;
    }

    public static c newBuilder() {
        return (c) DEFAULT_INSTANCE.createBuilder();
    }

    public static AttributeContext parseDelimitedFrom(InputStream inputStream) {
        return (AttributeContext) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static AttributeContext parseFrom(ByteBuffer byteBuffer) {
        return (AttributeContext) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setApi(Api api) {
        api.getClass();
        this.api_ = api;
        this.bitField0_ |= 64;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDestination(Peer peer) {
        peer.getClass();
        this.destination_ = peer;
        this.bitField0_ |= 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOrigin(Peer peer) {
        peer.getClass();
        this.origin_ = peer;
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRequest(Request request) {
        request.getClass();
        this.request_ = request;
        this.bitField0_ |= 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResource(Resource resource) {
        resource.getClass();
        this.resource_ = resource;
        this.bitField0_ |= 32;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResponse(Response response) {
        response.getClass();
        this.response_ = response;
        this.bitField0_ |= 16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSource(Peer peer) {
        peer.getClass();
        this.source_ = peer;
        this.bitField0_ |= 2;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဉ\u0001\u0002ဉ\u0002\u0003ဉ\u0003\u0004ဉ\u0004\u0005ဉ\u0005\u0006ဉ\u0006\u0007ဉ\u0000", new Object[]{"bitField0_", "source_", "destination_", "request_", "response_", "resource_", "api_", "origin_"});
            case 3:
                return new AttributeContext();
            case 4:
                return new c(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (AttributeContext.class) {
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

    public Api getApi() {
        Api api = this.api_;
        return api == null ? Api.getDefaultInstance() : api;
    }

    public Peer getDestination() {
        Peer peer = this.destination_;
        return peer == null ? Peer.getDefaultInstance() : peer;
    }

    public Peer getOrigin() {
        Peer peer = this.origin_;
        return peer == null ? Peer.getDefaultInstance() : peer;
    }

    public Request getRequest() {
        Request request = this.request_;
        return request == null ? Request.getDefaultInstance() : request;
    }

    public Resource getResource() {
        Resource resource = this.resource_;
        return resource == null ? Resource.getDefaultInstance() : resource;
    }

    public Response getResponse() {
        Response response = this.response_;
        return response == null ? Response.getDefaultInstance() : response;
    }

    public Peer getSource() {
        Peer peer = this.source_;
        return peer == null ? Peer.getDefaultInstance() : peer;
    }

    public boolean hasApi() {
        return (this.bitField0_ & 64) != 0;
    }

    public boolean hasDestination() {
        return (this.bitField0_ & 4) != 0;
    }

    public boolean hasOrigin() {
        return (this.bitField0_ & 1) != 0;
    }

    public boolean hasRequest() {
        return (this.bitField0_ & 8) != 0;
    }

    public boolean hasResource() {
        return (this.bitField0_ & 32) != 0;
    }

    public boolean hasResponse() {
        return (this.bitField0_ & 16) != 0;
    }

    public boolean hasSource() {
        return (this.bitField0_ & 2) != 0;
    }

    public static c newBuilder(AttributeContext attributeContext) {
        return (c) DEFAULT_INSTANCE.createBuilder(attributeContext);
    }

    public static AttributeContext parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (AttributeContext) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static AttributeContext parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (AttributeContext) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static AttributeContext parseFrom(r rVar) {
        return (AttributeContext) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static AttributeContext parseFrom(r rVar, O0 o4) {
        return (AttributeContext) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static AttributeContext parseFrom(byte[] bArr) {
        return (AttributeContext) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static AttributeContext parseFrom(byte[] bArr, O0 o4) {
        return (AttributeContext) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static AttributeContext parseFrom(InputStream inputStream) {
        return (AttributeContext) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static AttributeContext parseFrom(InputStream inputStream, O0 o4) {
        return (AttributeContext) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static AttributeContext parseFrom(AbstractC2961w abstractC2961w) {
        return (AttributeContext) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static AttributeContext parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (AttributeContext) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
