package okhttp3;

import D6.e;
import F2.G;
import Q6.j;
import Q6.k;
import Q6.m;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import okhttp3.internal.Util;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class MultipartBody extends RequestBody {
    public static final MediaType ALTERNATIVE;
    private static final byte[] COLONSPACE;
    private static final byte[] CRLF;
    public static final Companion Companion = new Companion(null);
    private static final byte[] DASHDASH;
    public static final MediaType DIGEST;
    public static final MediaType FORM;
    public static final MediaType MIXED;
    public static final MediaType PARALLEL;
    private final m boundaryByteString;
    private long contentLength;
    private final MediaType contentType;
    private final List<Part> parts;
    private final MediaType type;

    public static final class Builder {
        private final m boundary;
        private final List<Part> parts;
        private MediaType type;

        public Builder() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final Builder addFormDataPart(String str, String str2) {
            q0.h(str, "name");
            q0.h(str2, "value");
            addPart(Part.Companion.createFormData(str, str2));
            return this;
        }

        public final Builder addPart(RequestBody requestBody) {
            q0.h(requestBody, "body");
            addPart(Part.Companion.create(requestBody));
            return this;
        }

        public final MultipartBody build() {
            if (!this.parts.isEmpty()) {
                return new MultipartBody(this.boundary, this.type, Util.toImmutableList(this.parts));
            }
            throw new IllegalStateException("Multipart body must have at least one part.".toString());
        }

        public final Builder setType(MediaType mediaType) {
            q0.h(mediaType, "type");
            if (q0.c(mediaType.type(), "multipart")) {
                this.type = mediaType;
                return this;
            }
            throw new IllegalArgumentException(("multipart != " + mediaType).toString());
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ Builder(String str, int i8, e eVar) {
            if ((i8 & 1) != 0) {
                str = UUID.randomUUID().toString();
                q0.g(str, "randomUUID().toString()");
            }
            this(str);
        }

        public final Builder addFormDataPart(String str, String str2, RequestBody requestBody) {
            q0.h(str, "name");
            q0.h(requestBody, "body");
            addPart(Part.Companion.createFormData(str, str2, requestBody));
            return this;
        }

        public final Builder addPart(Headers headers, RequestBody requestBody) {
            q0.h(requestBody, "body");
            addPart(Part.Companion.create(headers, requestBody));
            return this;
        }

        public final Builder addPart(Part part) {
            q0.h(part, "part");
            this.parts.add(part);
            return this;
        }

        public Builder(String str) {
            q0.h(str, "boundary");
            m mVar = m.f6065J;
            this.boundary = G.C(str);
            this.type = MultipartBody.MIXED;
            this.parts = new ArrayList();
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        public final void appendQuotedString$okhttp(StringBuilder sb, String str) {
            q0.h(sb, "<this>");
            q0.h(str, "key");
            sb.append('\"');
            int length = str.length();
            for (int i8 = 0; i8 < length; i8++) {
                char cCharAt = str.charAt(i8);
                if (cCharAt == '\n') {
                    sb.append("%0A");
                } else if (cCharAt == '\r') {
                    sb.append("%0D");
                } else if (cCharAt == '\"') {
                    sb.append("%22");
                } else {
                    sb.append(cCharAt);
                }
            }
            sb.append('\"');
        }
    }

    public static final class Part {
        public static final Companion Companion = new Companion(null);
        private final RequestBody body;
        private final Headers headers;

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(e eVar) {
                this();
            }

            public final Part create(RequestBody requestBody) {
                q0.h(requestBody, "body");
                return create(null, requestBody);
            }

            public final Part createFormData(String str, String str2) {
                q0.h(str, "name");
                q0.h(str2, "value");
                return createFormData(str, null, RequestBody.Companion.create$default(RequestBody.Companion, str2, (MediaType) null, 1, (Object) null));
            }

            public final Part create(Headers headers, RequestBody requestBody) {
                q0.h(requestBody, "body");
                e eVar = null;
                if ((headers != null ? headers.get("Content-Type") : null) != null) {
                    throw new IllegalArgumentException("Unexpected header: Content-Type".toString());
                }
                if ((headers != null ? headers.get("Content-Length") : null) == null) {
                    return new Part(headers, requestBody, eVar);
                }
                throw new IllegalArgumentException("Unexpected header: Content-Length".toString());
            }

            public final Part createFormData(String str, String str2, RequestBody requestBody) {
                q0.h(str, "name");
                q0.h(requestBody, "body");
                StringBuilder sb = new StringBuilder();
                sb.append("form-data; name=");
                Companion companion = MultipartBody.Companion;
                companion.appendQuotedString$okhttp(sb, str);
                if (str2 != null) {
                    sb.append("; filename=");
                    companion.appendQuotedString$okhttp(sb, str2);
                }
                String string = sb.toString();
                q0.g(string, "StringBuilder().apply(builderAction).toString()");
                return create(new Headers.Builder().addUnsafeNonAscii("Content-Disposition", string).build(), requestBody);
            }
        }

        public /* synthetic */ Part(Headers headers, RequestBody requestBody, e eVar) {
            this(headers, requestBody);
        }

        public static final Part create(Headers headers, RequestBody requestBody) {
            return Companion.create(headers, requestBody);
        }

        public static final Part createFormData(String str, String str2) {
            return Companion.createFormData(str, str2);
        }

        /* JADX INFO: renamed from: -deprecated_body, reason: not valid java name */
        public final RequestBody m93deprecated_body() {
            return this.body;
        }

        /* JADX INFO: renamed from: -deprecated_headers, reason: not valid java name */
        public final Headers m94deprecated_headers() {
            return this.headers;
        }

        public final RequestBody body() {
            return this.body;
        }

        public final Headers headers() {
            return this.headers;
        }

        private Part(Headers headers, RequestBody requestBody) {
            this.headers = headers;
            this.body = requestBody;
        }

        public static final Part create(RequestBody requestBody) {
            return Companion.create(requestBody);
        }

        public static final Part createFormData(String str, String str2, RequestBody requestBody) {
            return Companion.createFormData(str, str2, requestBody);
        }
    }

    static {
        MediaType.Companion companion = MediaType.Companion;
        MIXED = companion.get("multipart/mixed");
        ALTERNATIVE = companion.get("multipart/alternative");
        DIGEST = companion.get("multipart/digest");
        PARALLEL = companion.get("multipart/parallel");
        FORM = companion.get("multipart/form-data");
        COLONSPACE = new byte[]{58, 32};
        CRLF = new byte[]{MqttWireMessage.MESSAGE_TYPE_PINGRESP, 10};
        DASHDASH = new byte[]{45, 45};
    }

    public MultipartBody(m mVar, MediaType mediaType, List<Part> list) {
        q0.h(mVar, "boundaryByteString");
        q0.h(mediaType, "type");
        q0.h(list, "parts");
        this.boundaryByteString = mVar;
        this.type = mediaType;
        this.parts = list;
        this.contentType = MediaType.Companion.get(mediaType + "; boundary=" + boundary());
        this.contentLength = -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final long writeOrCountBytes(k kVar, boolean z7) throws EOFException {
        j jVar;
        if (z7) {
            kVar = new j();
            jVar = kVar;
        } else {
            jVar = 0;
        }
        int size = this.parts.size();
        long j8 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            Part part = this.parts.get(i8);
            Headers headers = part.headers();
            RequestBody requestBodyBody = part.body();
            q0.e(kVar);
            kVar.M(DASHDASH);
            kVar.T(this.boundaryByteString);
            kVar.M(CRLF);
            if (headers != null) {
                int size2 = headers.size();
                for (int i9 = 0; i9 < size2; i9++) {
                    kVar.B(headers.name(i9)).M(COLONSPACE).B(headers.value(i9)).M(CRLF);
                }
            }
            MediaType mediaTypeContentType = requestBodyBody.contentType();
            if (mediaTypeContentType != null) {
                kVar.B("Content-Type: ").B(mediaTypeContentType.toString()).M(CRLF);
            }
            long jContentLength = requestBodyBody.contentLength();
            if (jContentLength != -1) {
                kVar.B("Content-Length: ").V(jContentLength).M(CRLF);
            } else if (z7) {
                q0.e(jVar);
                jVar.clear();
                return -1L;
            }
            byte[] bArr = CRLF;
            kVar.M(bArr);
            if (z7) {
                j8 += jContentLength;
            } else {
                requestBodyBody.writeTo(kVar);
            }
            kVar.M(bArr);
        }
        q0.e(kVar);
        byte[] bArr2 = DASHDASH;
        kVar.M(bArr2);
        kVar.T(this.boundaryByteString);
        kVar.M(bArr2);
        kVar.M(CRLF);
        if (!z7) {
            return j8;
        }
        q0.e(jVar);
        long j9 = j8 + jVar.f6064H;
        jVar.clear();
        return j9;
    }

    /* JADX INFO: renamed from: -deprecated_boundary, reason: not valid java name */
    public final String m89deprecated_boundary() {
        return boundary();
    }

    /* JADX INFO: renamed from: -deprecated_parts, reason: not valid java name */
    public final List<Part> m90deprecated_parts() {
        return this.parts;
    }

    /* JADX INFO: renamed from: -deprecated_size, reason: not valid java name */
    public final int m91deprecated_size() {
        return size();
    }

    /* JADX INFO: renamed from: -deprecated_type, reason: not valid java name */
    public final MediaType m92deprecated_type() {
        return this.type;
    }

    public final String boundary() {
        return this.boundaryByteString.k();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws EOFException {
        long j8 = this.contentLength;
        if (j8 != -1) {
            return j8;
        }
        long jWriteOrCountBytes = writeOrCountBytes(null, true);
        this.contentLength = jWriteOrCountBytes;
        return jWriteOrCountBytes;
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return this.contentType;
    }

    public final Part part(int i8) {
        return this.parts.get(i8);
    }

    public final List<Part> parts() {
        return this.parts;
    }

    public final int size() {
        return this.parts.size();
    }

    public final MediaType type() {
        return this.type;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(k kVar) throws EOFException {
        q0.h(kVar, "sink");
        writeOrCountBytes(kVar, false);
    }
}
