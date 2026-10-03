package com.google.api;

import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2883c;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.Api;
import com.google.protobuf.C2885c1;
import com.google.protobuf.Enum;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.I0;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.InterfaceC2903h;
import com.google.protobuf.InterfaceC2956u1;
import com.google.protobuf.O0;
import com.google.protobuf.R1;
import com.google.protobuf.Type;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.w2;
import com.google.protobuf.x2;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.HttpUrl;
import org.videolan.libvlc.interfaces.IMediaList;
import p175w4.A0;
import p175w4.B;
import p175w4.B0;
import p175w4.C;
import p175w4.C3210g;
import p175w4.C3213j;
import p175w4.C3223u;
import p175w4.C3226x;
import p175w4.InterfaceC3205c0;
import p175w4.P;
import p175w4.n0;
import p175w4.r;
import p175w4.u0;
import p175w4.v0;

/* JADX INFO: loaded from: classes.dex */
public final class Service extends AbstractC2909i1 implements R1 {
    public static final int APIS_FIELD_NUMBER = 3;
    public static final int AUTHENTICATION_FIELD_NUMBER = 11;
    public static final int BACKEND_FIELD_NUMBER = 8;
    public static final int BILLING_FIELD_NUMBER = 26;
    public static final int CONFIG_VERSION_FIELD_NUMBER = 20;
    public static final int CONTEXT_FIELD_NUMBER = 12;
    public static final int CONTROL_FIELD_NUMBER = 21;
    private static final Service DEFAULT_INSTANCE;
    public static final int DOCUMENTATION_FIELD_NUMBER = 6;
    public static final int ENDPOINTS_FIELD_NUMBER = 18;
    public static final int ENUMS_FIELD_NUMBER = 5;
    public static final int HTTP_FIELD_NUMBER = 9;
    public static final int ID_FIELD_NUMBER = 33;
    public static final int LOGGING_FIELD_NUMBER = 27;
    public static final int LOGS_FIELD_NUMBER = 23;
    public static final int METRICS_FIELD_NUMBER = 24;
    public static final int MONITORED_RESOURCES_FIELD_NUMBER = 25;
    public static final int MONITORING_FIELD_NUMBER = 28;
    public static final int NAME_FIELD_NUMBER = 1;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int PRODUCER_PROJECT_ID_FIELD_NUMBER = 22;
    public static final int QUOTA_FIELD_NUMBER = 10;
    public static final int SOURCE_INFO_FIELD_NUMBER = 37;
    public static final int SYSTEM_PARAMETERS_FIELD_NUMBER = 29;
    public static final int TITLE_FIELD_NUMBER = 2;
    public static final int TYPES_FIELD_NUMBER = 4;
    public static final int USAGE_FIELD_NUMBER = 15;
    private Authentication authentication_;
    private Backend backend_;
    private Billing billing_;
    private int bitField0_;
    private UInt32Value configVersion_;
    private Context context_;
    private Control control_;
    private Documentation documentation_;
    private Http http_;
    private Logging logging_;
    private Monitoring monitoring_;
    private Quota quota_;
    private SourceInfo sourceInfo_;
    private SystemParameters systemParameters_;
    private Usage usage_;
    private String name_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String id_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String title_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String producerProjectId_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2956u1 apis_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 types_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 enums_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 endpoints_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 logs_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 metrics_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 monitoredResources_ = AbstractC2909i1.emptyProtobufList();

    static {
        Service service = new Service();
        DEFAULT_INSTANCE = service;
        AbstractC2909i1.registerDefaultInstance(Service.class, service);
    }

    private Service() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllApis(Iterable<? extends Api> iterable) {
        ensureApisIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.apis_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllEndpoints(Iterable<? extends Endpoint> iterable) {
        ensureEndpointsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.endpoints_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllEnums(Iterable<? extends Enum> iterable) {
        ensureEnumsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.enums_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllLogs(Iterable<? extends LogDescriptor> iterable) {
        ensureLogsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.logs_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllMetrics(Iterable<? extends MetricDescriptor> iterable) {
        ensureMetricsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.metrics_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllMonitoredResources(Iterable<? extends MonitoredResourceDescriptor> iterable) {
        ensureMonitoredResourcesIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.monitoredResources_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllTypes(Iterable<? extends Type> iterable) {
        ensureTypesIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.types_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addApis(Api api) {
        api.getClass();
        ensureApisIsMutable();
        this.apis_.add(api);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addEndpoints(Endpoint endpoint) {
        endpoint.getClass();
        ensureEndpointsIsMutable();
        this.endpoints_.add(endpoint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addEnums(Enum r7) {
        r7.getClass();
        ensureEnumsIsMutable();
        this.enums_.add(r7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addLogs(LogDescriptor logDescriptor) {
        logDescriptor.getClass();
        ensureLogsIsMutable();
        this.logs_.add(logDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addMetrics(MetricDescriptor metricDescriptor) {
        metricDescriptor.getClass();
        ensureMetricsIsMutable();
        this.metrics_.add(metricDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addMonitoredResources(MonitoredResourceDescriptor monitoredResourceDescriptor) {
        monitoredResourceDescriptor.getClass();
        ensureMonitoredResourcesIsMutable();
        this.monitoredResources_.add(monitoredResourceDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addTypes(Type type) {
        type.getClass();
        ensureTypesIsMutable();
        this.types_.add(type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearApis() {
        this.apis_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAuthentication() {
        this.authentication_ = null;
        this.bitField0_ &= -33;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBackend() {
        this.backend_ = null;
        this.bitField0_ &= -5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBilling() {
        this.billing_ = null;
        this.bitField0_ &= -513;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearConfigVersion() {
        this.configVersion_ = null;
        this.bitField0_ &= -2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearContext() {
        this.context_ = null;
        this.bitField0_ &= -65;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearControl() {
        this.control_ = null;
        this.bitField0_ &= -257;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDocumentation() {
        this.documentation_ = null;
        this.bitField0_ &= -3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearEndpoints() {
        this.endpoints_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearEnums() {
        this.enums_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearHttp() {
        this.http_ = null;
        this.bitField0_ &= -9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearId() {
        this.id_ = getDefaultInstance().getId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearLogging() {
        this.logging_ = null;
        this.bitField0_ &= -1025;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearLogs() {
        this.logs_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMetrics() {
        this.metrics_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMonitoredResources() {
        this.monitoredResources_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMonitoring() {
        this.monitoring_ = null;
        this.bitField0_ &= -2049;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearName() {
        this.name_ = getDefaultInstance().getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearProducerProjectId() {
        this.producerProjectId_ = getDefaultInstance().getProducerProjectId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearQuota() {
        this.quota_ = null;
        this.bitField0_ &= -17;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSourceInfo() {
        this.sourceInfo_ = null;
        this.bitField0_ &= -8193;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSystemParameters() {
        this.systemParameters_ = null;
        this.bitField0_ &= -4097;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTitle() {
        this.title_ = getDefaultInstance().getTitle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTypes() {
        this.types_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearUsage() {
        this.usage_ = null;
        this.bitField0_ &= -129;
    }

    private void ensureApisIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.apis_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.apis_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureEndpointsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.endpoints_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.endpoints_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureEnumsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.enums_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.enums_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureLogsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.logs_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.logs_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureMetricsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.metrics_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.metrics_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureMonitoredResourcesIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.monitoredResources_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.monitoredResources_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureTypesIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.types_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.types_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static Service getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeAuthentication(Authentication authentication) {
        authentication.getClass();
        Authentication authentication2 = this.authentication_;
        if (authentication2 == null || authentication2 == Authentication.getDefaultInstance()) {
            this.authentication_ = authentication;
        } else {
            C3210g c3210gNewBuilder = Authentication.newBuilder(this.authentication_);
            c3210gNewBuilder.g(authentication);
            this.authentication_ = (Authentication) c3210gNewBuilder.k();
        }
        this.bitField0_ |= 32;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeBackend(Backend backend) {
        backend.getClass();
        Backend backend2 = this.backend_;
        if (backend2 == null || backend2 == Backend.getDefaultInstance()) {
            this.backend_ = backend;
        } else {
            C3213j c3213jNewBuilder = Backend.newBuilder(this.backend_);
            c3213jNewBuilder.g(backend);
            this.backend_ = (Backend) c3213jNewBuilder.k();
        }
        this.bitField0_ |= 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeBilling(Billing billing) {
        billing.getClass();
        Billing billing2 = this.billing_;
        if (billing2 == null || billing2 == Billing.getDefaultInstance()) {
            this.billing_ = billing;
        } else {
            b bVarNewBuilder = Billing.newBuilder(this.billing_);
            bVarNewBuilder.g(billing);
            this.billing_ = (Billing) bVarNewBuilder.k();
        }
        this.bitField0_ |= IMediaList.Event.ItemAdded;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeConfigVersion(UInt32Value uInt32Value) {
        uInt32Value.getClass();
        UInt32Value uInt32Value2 = this.configVersion_;
        if (uInt32Value2 == null || uInt32Value2 == UInt32Value.getDefaultInstance()) {
            this.configVersion_ = uInt32Value;
        } else {
            x2 x2VarNewBuilder = UInt32Value.newBuilder(this.configVersion_);
            x2VarNewBuilder.g(uInt32Value);
            this.configVersion_ = (UInt32Value) x2VarNewBuilder.k();
        }
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeContext(Context context) {
        context.getClass();
        Context context2 = this.context_;
        if (context2 == null || context2 == Context.getDefaultInstance()) {
            this.context_ = context;
        } else {
            r rVarNewBuilder = Context.newBuilder(this.context_);
            rVarNewBuilder.g(context);
            this.context_ = (Context) rVarNewBuilder.k();
        }
        this.bitField0_ |= 64;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeControl(Control control) {
        control.getClass();
        Control control2 = this.control_;
        if (control2 == null || control2 == Control.getDefaultInstance()) {
            this.control_ = control;
        } else {
            C3223u c3223uNewBuilder = Control.newBuilder(this.control_);
            c3223uNewBuilder.g(control);
            this.control_ = (Control) c3223uNewBuilder.k();
        }
        this.bitField0_ |= 256;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeDocumentation(Documentation documentation) {
        documentation.getClass();
        Documentation documentation2 = this.documentation_;
        if (documentation2 == null || documentation2 == Documentation.getDefaultInstance()) {
            this.documentation_ = documentation;
        } else {
            C3226x c3226xNewBuilder = Documentation.newBuilder(this.documentation_);
            c3226xNewBuilder.g(documentation);
            this.documentation_ = (Documentation) c3226xNewBuilder.k();
        }
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeHttp(Http http) {
        http.getClass();
        Http http2 = this.http_;
        if (http2 == null || http2 == Http.getDefaultInstance()) {
            this.http_ = http;
        } else {
            C cNewBuilder = Http.newBuilder(this.http_);
            cNewBuilder.g(http);
            this.http_ = (Http) cNewBuilder.k();
        }
        this.bitField0_ |= 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeLogging(Logging logging) {
        logging.getClass();
        Logging logging2 = this.logging_;
        if (logging2 == null || logging2 == Logging.getDefaultInstance()) {
            this.logging_ = logging;
        } else {
            k kVarNewBuilder = Logging.newBuilder(this.logging_);
            kVarNewBuilder.g(logging);
            this.logging_ = (Logging) kVarNewBuilder.k();
        }
        this.bitField0_ |= 1024;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeMonitoring(Monitoring monitoring) {
        monitoring.getClass();
        Monitoring monitoring2 = this.monitoring_;
        if (monitoring2 == null || monitoring2 == Monitoring.getDefaultInstance()) {
            this.monitoring_ = monitoring;
        } else {
            p pVarNewBuilder = Monitoring.newBuilder(this.monitoring_);
            pVarNewBuilder.g(monitoring);
            this.monitoring_ = (Monitoring) pVarNewBuilder.k();
        }
        this.bitField0_ |= 2048;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeQuota(Quota quota) {
        quota.getClass();
        Quota quota2 = this.quota_;
        if (quota2 == null || quota2 == Quota.getDefaultInstance()) {
            this.quota_ = quota;
        } else {
            n0 n0VarNewBuilder = Quota.newBuilder(this.quota_);
            n0VarNewBuilder.g(quota);
            this.quota_ = (Quota) n0VarNewBuilder.k();
        }
        this.bitField0_ |= 16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeSourceInfo(SourceInfo sourceInfo) {
        sourceInfo.getClass();
        SourceInfo sourceInfo2 = this.sourceInfo_;
        if (sourceInfo2 == null || sourceInfo2 == SourceInfo.getDefaultInstance()) {
            this.sourceInfo_ = sourceInfo;
        } else {
            v0 v0VarNewBuilder = SourceInfo.newBuilder(this.sourceInfo_);
            v0VarNewBuilder.g(sourceInfo);
            this.sourceInfo_ = (SourceInfo) v0VarNewBuilder.k();
        }
        this.bitField0_ |= 8192;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeSystemParameters(SystemParameters systemParameters) {
        systemParameters.getClass();
        SystemParameters systemParameters2 = this.systemParameters_;
        if (systemParameters2 == null || systemParameters2 == SystemParameters.getDefaultInstance()) {
            this.systemParameters_ = systemParameters;
        } else {
            A0 a0NewBuilder = SystemParameters.newBuilder(this.systemParameters_);
            a0NewBuilder.g(systemParameters);
            this.systemParameters_ = (SystemParameters) a0NewBuilder.k();
        }
        this.bitField0_ |= 4096;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeUsage(Usage usage) {
        usage.getClass();
        Usage usage2 = this.usage_;
        if (usage2 == null || usage2 == Usage.getDefaultInstance()) {
            this.usage_ = usage;
        } else {
            B0 b0NewBuilder = Usage.newBuilder(this.usage_);
            b0NewBuilder.g(usage);
            this.usage_ = (Usage) b0NewBuilder.k();
        }
        this.bitField0_ |= 128;
    }

    public static u0 newBuilder() {
        return (u0) DEFAULT_INSTANCE.createBuilder();
    }

    public static Service parseDelimitedFrom(InputStream inputStream) {
        return (Service) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Service parseFrom(ByteBuffer byteBuffer) {
        return (Service) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeApis(int i8) {
        ensureApisIsMutable();
        this.apis_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeEndpoints(int i8) {
        ensureEndpointsIsMutable();
        this.endpoints_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeEnums(int i8) {
        ensureEnumsIsMutable();
        this.enums_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeLogs(int i8) {
        ensureLogsIsMutable();
        this.logs_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeMetrics(int i8) {
        ensureMetricsIsMutable();
        this.metrics_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeMonitoredResources(int i8) {
        ensureMonitoredResourcesIsMutable();
        this.monitoredResources_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeTypes(int i8) {
        ensureTypesIsMutable();
        this.types_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setApis(int i8, Api api) {
        api.getClass();
        ensureApisIsMutable();
        this.apis_.set(i8, api);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAuthentication(Authentication authentication) {
        authentication.getClass();
        this.authentication_ = authentication;
        this.bitField0_ |= 32;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBackend(Backend backend) {
        backend.getClass();
        this.backend_ = backend;
        this.bitField0_ |= 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBilling(Billing billing) {
        billing.getClass();
        this.billing_ = billing;
        this.bitField0_ |= IMediaList.Event.ItemAdded;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setConfigVersion(UInt32Value uInt32Value) {
        uInt32Value.getClass();
        this.configVersion_ = uInt32Value;
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setContext(Context context) {
        context.getClass();
        this.context_ = context;
        this.bitField0_ |= 64;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setControl(Control control) {
        control.getClass();
        this.control_ = control;
        this.bitField0_ |= 256;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDocumentation(Documentation documentation) {
        documentation.getClass();
        this.documentation_ = documentation;
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEndpoints(int i8, Endpoint endpoint) {
        endpoint.getClass();
        ensureEndpointsIsMutable();
        this.endpoints_.set(i8, endpoint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEnums(int i8, Enum r7) {
        r7.getClass();
        ensureEnumsIsMutable();
        this.enums_.set(i8, r7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHttp(Http http) {
        http.getClass();
        this.http_ = http;
        this.bitField0_ |= 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setId(String str) {
        str.getClass();
        this.id_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIdBytes(com.google.protobuf.r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.id_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLogging(Logging logging) {
        logging.getClass();
        this.logging_ = logging;
        this.bitField0_ |= 1024;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLogs(int i8, LogDescriptor logDescriptor) {
        logDescriptor.getClass();
        ensureLogsIsMutable();
        this.logs_.set(i8, logDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMetrics(int i8, MetricDescriptor metricDescriptor) {
        metricDescriptor.getClass();
        ensureMetricsIsMutable();
        this.metrics_.set(i8, metricDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMonitoredResources(int i8, MonitoredResourceDescriptor monitoredResourceDescriptor) {
        monitoredResourceDescriptor.getClass();
        ensureMonitoredResourcesIsMutable();
        this.monitoredResources_.set(i8, monitoredResourceDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMonitoring(Monitoring monitoring) {
        monitoring.getClass();
        this.monitoring_ = monitoring;
        this.bitField0_ |= 2048;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setName(String str) {
        str.getClass();
        this.name_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNameBytes(com.google.protobuf.r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.name_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProducerProjectId(String str) {
        str.getClass();
        this.producerProjectId_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProducerProjectIdBytes(com.google.protobuf.r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.producerProjectId_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setQuota(Quota quota) {
        quota.getClass();
        this.quota_ = quota;
        this.bitField0_ |= 16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSourceInfo(SourceInfo sourceInfo) {
        sourceInfo.getClass();
        this.sourceInfo_ = sourceInfo;
        this.bitField0_ |= 8192;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSystemParameters(SystemParameters systemParameters) {
        systemParameters.getClass();
        this.systemParameters_ = systemParameters;
        this.bitField0_ |= 4096;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTitle(String str) {
        str.getClass();
        this.title_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTitleBytes(com.google.protobuf.r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.title_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTypes(int i8, Type type) {
        type.getClass();
        ensureTypesIsMutable();
        this.types_.set(i8, type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUsage(Usage usage) {
        usage.getClass();
        this.usage_ = usage;
        this.bitField0_ |= 128;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0019\u0000\u0001\u0001%\u0019\u0000\u0007\u0000\u0001Ȉ\u0002Ȉ\u0003\u001b\u0004\u001b\u0005\u001b\u0006ဉ\u0001\bဉ\u0002\tဉ\u0003\nဉ\u0004\u000bဉ\u0005\fဉ\u0006\u000fဉ\u0007\u0012\u001b\u0014ဉ\u0000\u0015ဉ\b\u0016Ȉ\u0017\u001b\u0018\u001b\u0019\u001b\u001aဉ\t\u001bဉ\n\u001cဉ\u000b\u001dဉ\f!Ȉ%ဉ\r", new Object[]{"bitField0_", "name_", "title_", "apis_", Api.class, "types_", Type.class, "enums_", Enum.class, "documentation_", "backend_", "http_", "quota_", "authentication_", "context_", "usage_", "endpoints_", Endpoint.class, "configVersion_", "control_", "producerProjectId_", "logs_", LogDescriptor.class, "metrics_", MetricDescriptor.class, "monitoredResources_", MonitoredResourceDescriptor.class, "billing_", "logging_", "monitoring_", "systemParameters_", "id_", "sourceInfo_"});
            case 3:
                return new Service();
            case 4:
                return new u0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (Service.class) {
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

    public Api getApis(int i8) {
        return (Api) this.apis_.get(i8);
    }

    public int getApisCount() {
        return this.apis_.size();
    }

    public List<Api> getApisList() {
        return this.apis_;
    }

    public InterfaceC2903h getApisOrBuilder(int i8) {
        return (InterfaceC2903h) this.apis_.get(i8);
    }

    public List<? extends InterfaceC2903h> getApisOrBuilderList() {
        return this.apis_;
    }

    public Authentication getAuthentication() {
        Authentication authentication = this.authentication_;
        return authentication == null ? Authentication.getDefaultInstance() : authentication;
    }

    public Backend getBackend() {
        Backend backend = this.backend_;
        return backend == null ? Backend.getDefaultInstance() : backend;
    }

    public Billing getBilling() {
        Billing billing = this.billing_;
        return billing == null ? Billing.getDefaultInstance() : billing;
    }

    public UInt32Value getConfigVersion() {
        UInt32Value uInt32Value = this.configVersion_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public Context getContext() {
        Context context = this.context_;
        return context == null ? Context.getDefaultInstance() : context;
    }

    public Control getControl() {
        Control control = this.control_;
        return control == null ? Control.getDefaultInstance() : control;
    }

    public Documentation getDocumentation() {
        Documentation documentation = this.documentation_;
        return documentation == null ? Documentation.getDefaultInstance() : documentation;
    }

    public Endpoint getEndpoints(int i8) {
        return (Endpoint) this.endpoints_.get(i8);
    }

    public int getEndpointsCount() {
        return this.endpoints_.size();
    }

    public List<Endpoint> getEndpointsList() {
        return this.endpoints_;
    }

    public B getEndpointsOrBuilder(int i8) {
        return (B) this.endpoints_.get(i8);
    }

    public List<? extends B> getEndpointsOrBuilderList() {
        return this.endpoints_;
    }

    public Enum getEnums(int i8) {
        return (Enum) this.enums_.get(i8);
    }

    public int getEnumsCount() {
        return this.enums_.size();
    }

    public List<Enum> getEnumsList() {
        return this.enums_;
    }

    public I0 getEnumsOrBuilder(int i8) {
        return (I0) this.enums_.get(i8);
    }

    public List<? extends I0> getEnumsOrBuilderList() {
        return this.enums_;
    }

    public Http getHttp() {
        Http http = this.http_;
        return http == null ? Http.getDefaultInstance() : http;
    }

    public String getId() {
        return this.id_;
    }

    public com.google.protobuf.r getIdBytes() {
        return com.google.protobuf.r.l(this.id_);
    }

    public Logging getLogging() {
        Logging logging = this.logging_;
        return logging == null ? Logging.getDefaultInstance() : logging;
    }

    public LogDescriptor getLogs(int i8) {
        return (LogDescriptor) this.logs_.get(i8);
    }

    public int getLogsCount() {
        return this.logs_.size();
    }

    public List<LogDescriptor> getLogsList() {
        return this.logs_;
    }

    public P getLogsOrBuilder(int i8) {
        return (P) this.logs_.get(i8);
    }

    public List<? extends P> getLogsOrBuilderList() {
        return this.logs_;
    }

    public MetricDescriptor getMetrics(int i8) {
        return (MetricDescriptor) this.metrics_.get(i8);
    }

    public int getMetricsCount() {
        return this.metrics_.size();
    }

    public List<MetricDescriptor> getMetricsList() {
        return this.metrics_;
    }

    public o getMetricsOrBuilder(int i8) {
        return (o) this.metrics_.get(i8);
    }

    public List<? extends o> getMetricsOrBuilderList() {
        return this.metrics_;
    }

    public MonitoredResourceDescriptor getMonitoredResources(int i8) {
        return (MonitoredResourceDescriptor) this.monitoredResources_.get(i8);
    }

    public int getMonitoredResourcesCount() {
        return this.monitoredResources_.size();
    }

    public List<MonitoredResourceDescriptor> getMonitoredResourcesList() {
        return this.monitoredResources_;
    }

    public InterfaceC3205c0 getMonitoredResourcesOrBuilder(int i8) {
        return (InterfaceC3205c0) this.monitoredResources_.get(i8);
    }

    public List<? extends InterfaceC3205c0> getMonitoredResourcesOrBuilderList() {
        return this.monitoredResources_;
    }

    public Monitoring getMonitoring() {
        Monitoring monitoring = this.monitoring_;
        return monitoring == null ? Monitoring.getDefaultInstance() : monitoring;
    }

    public String getName() {
        return this.name_;
    }

    public com.google.protobuf.r getNameBytes() {
        return com.google.protobuf.r.l(this.name_);
    }

    public String getProducerProjectId() {
        return this.producerProjectId_;
    }

    public com.google.protobuf.r getProducerProjectIdBytes() {
        return com.google.protobuf.r.l(this.producerProjectId_);
    }

    public Quota getQuota() {
        Quota quota = this.quota_;
        return quota == null ? Quota.getDefaultInstance() : quota;
    }

    public SourceInfo getSourceInfo() {
        SourceInfo sourceInfo = this.sourceInfo_;
        return sourceInfo == null ? SourceInfo.getDefaultInstance() : sourceInfo;
    }

    public SystemParameters getSystemParameters() {
        SystemParameters systemParameters = this.systemParameters_;
        return systemParameters == null ? SystemParameters.getDefaultInstance() : systemParameters;
    }

    public String getTitle() {
        return this.title_;
    }

    public com.google.protobuf.r getTitleBytes() {
        return com.google.protobuf.r.l(this.title_);
    }

    public Type getTypes(int i8) {
        return (Type) this.types_.get(i8);
    }

    public int getTypesCount() {
        return this.types_.size();
    }

    public List<Type> getTypesList() {
        return this.types_;
    }

    public w2 getTypesOrBuilder(int i8) {
        return (w2) this.types_.get(i8);
    }

    public List<? extends w2> getTypesOrBuilderList() {
        return this.types_;
    }

    public Usage getUsage() {
        Usage usage = this.usage_;
        return usage == null ? Usage.getDefaultInstance() : usage;
    }

    public boolean hasAuthentication() {
        return (this.bitField0_ & 32) != 0;
    }

    public boolean hasBackend() {
        return (this.bitField0_ & 4) != 0;
    }

    public boolean hasBilling() {
        return (this.bitField0_ & IMediaList.Event.ItemAdded) != 0;
    }

    public boolean hasConfigVersion() {
        return (this.bitField0_ & 1) != 0;
    }

    public boolean hasContext() {
        return (this.bitField0_ & 64) != 0;
    }

    public boolean hasControl() {
        return (this.bitField0_ & 256) != 0;
    }

    public boolean hasDocumentation() {
        return (this.bitField0_ & 2) != 0;
    }

    public boolean hasHttp() {
        return (this.bitField0_ & 8) != 0;
    }

    public boolean hasLogging() {
        return (this.bitField0_ & 1024) != 0;
    }

    public boolean hasMonitoring() {
        return (this.bitField0_ & 2048) != 0;
    }

    public boolean hasQuota() {
        return (this.bitField0_ & 16) != 0;
    }

    public boolean hasSourceInfo() {
        return (this.bitField0_ & 8192) != 0;
    }

    public boolean hasSystemParameters() {
        return (this.bitField0_ & 4096) != 0;
    }

    public boolean hasUsage() {
        return (this.bitField0_ & 128) != 0;
    }

    public static u0 newBuilder(Service service) {
        return (u0) DEFAULT_INSTANCE.createBuilder(service);
    }

    public static Service parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (Service) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Service parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (Service) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static Service parseFrom(com.google.protobuf.r rVar) {
        return (Service) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addApis(int i8, Api api) {
        api.getClass();
        ensureApisIsMutable();
        this.apis_.add(i8, api);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addEndpoints(int i8, Endpoint endpoint) {
        endpoint.getClass();
        ensureEndpointsIsMutable();
        this.endpoints_.add(i8, endpoint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addEnums(int i8, Enum r7) {
        r7.getClass();
        ensureEnumsIsMutable();
        this.enums_.add(i8, r7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addLogs(int i8, LogDescriptor logDescriptor) {
        logDescriptor.getClass();
        ensureLogsIsMutable();
        this.logs_.add(i8, logDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addMetrics(int i8, MetricDescriptor metricDescriptor) {
        metricDescriptor.getClass();
        ensureMetricsIsMutable();
        this.metrics_.add(i8, metricDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addMonitoredResources(int i8, MonitoredResourceDescriptor monitoredResourceDescriptor) {
        monitoredResourceDescriptor.getClass();
        ensureMonitoredResourcesIsMutable();
        this.monitoredResources_.add(i8, monitoredResourceDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addTypes(int i8, Type type) {
        type.getClass();
        ensureTypesIsMutable();
        this.types_.add(i8, type);
    }

    public static Service parseFrom(com.google.protobuf.r rVar, O0 o4) {
        return (Service) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static Service parseFrom(byte[] bArr) {
        return (Service) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Service parseFrom(byte[] bArr, O0 o4) {
        return (Service) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static Service parseFrom(InputStream inputStream) {
        return (Service) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Service parseFrom(InputStream inputStream, O0 o4) {
        return (Service) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Service parseFrom(AbstractC2961w abstractC2961w) {
        return (Service) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static Service parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (Service) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
