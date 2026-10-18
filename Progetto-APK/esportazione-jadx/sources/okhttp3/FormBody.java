package okhttp3;

import D6.e;
import Q6.j;
import Q6.k;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.Util;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class FormBody extends RequestBody {
    private final List<String> encodedNames;
    private final List<String> encodedValues;
    public static final Companion Companion = new Companion(null);
    private static final MediaType CONTENT_TYPE = MediaType.Companion.get("application/x-www-form-urlencoded");

    public static final class Builder {
        private final Charset charset;
        private final List<String> names;
        private final List<String> values;

        public Builder() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final Builder add(String str, String str2) {
            q0.h(str, "name");
            q0.h(str2, "value");
            List<String> list = this.names;
            HttpUrl.Companion companion = HttpUrl.Companion;
            list.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.FORM_ENCODE_SET, false, false, true, false, this.charset, 91, null));
            this.values.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, str2, 0, 0, HttpUrl.FORM_ENCODE_SET, false, false, true, false, this.charset, 91, null));
            return this;
        }

        public final Builder addEncoded(String str, String str2) {
            q0.h(str, "name");
            q0.h(str2, "value");
            List<String> list = this.names;
            HttpUrl.Companion companion = HttpUrl.Companion;
            list.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.FORM_ENCODE_SET, true, false, true, false, this.charset, 83, null));
            this.values.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, str2, 0, 0, HttpUrl.FORM_ENCODE_SET, true, false, true, false, this.charset, 83, null));
            return this;
        }

        public final FormBody build() {
            return new FormBody(this.names, this.values);
        }

        public /* synthetic */ Builder(Charset charset, int i8, e eVar) {
            this((i8 & 1) != 0 ? null : charset);
        }

        public Builder(Charset charset) {
            this.charset = charset;
            this.names = new ArrayList();
            this.values = new ArrayList();
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }
    }

    public FormBody(List<String> list, List<String> list2) {
        q0.h(list, "encodedNames");
        q0.h(list2, "encodedValues");
        this.encodedNames = Util.toImmutableList(list);
        this.encodedValues = Util.toImmutableList(list2);
    }

    private final long writeOrCountBytes(k kVar, boolean z7) throws EOFException {
        j jVarA;
        if (z7) {
            jVarA = new j();
        } else {
            q0.e(kVar);
            jVarA = kVar.a();
        }
        int size = this.encodedNames.size();
        for (int i8 = 0; i8 < size; i8++) {
            if (i8 > 0) {
                jVarA.o0(38);
            }
            jVarA.w0(this.encodedNames.get(i8));
            jVarA.o0(61);
            jVarA.w0(this.encodedValues.get(i8));
        }
        if (!z7) {
            return 0L;
        }
        long j8 = jVarA.f6064H;
        jVarA.clear();
        return j8;
    }

    /* JADX INFO: renamed from: -deprecated_size, reason: not valid java name */
    public final int m51deprecated_size() {
        return size();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() {
        return writeOrCountBytes(null, true);
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return CONTENT_TYPE;
    }

    public final String encodedName(int i8) {
        return this.encodedNames.get(i8);
    }

    public final String encodedValue(int i8) {
        return this.encodedValues.get(i8);
    }

    public final String name(int i8) {
        return HttpUrl.Companion.percentDecode$okhttp$default(HttpUrl.Companion, encodedName(i8), 0, 0, true, 3, null);
    }

    public final int size() {
        return this.encodedNames.size();
    }

    public final String value(int i8) {
        return HttpUrl.Companion.percentDecode$okhttp$default(HttpUrl.Companion, encodedValue(i8), 0, 0, true, 3, null);
    }

    @Override // okhttp3.RequestBody
    public void writeTo(k kVar) throws EOFException {
        q0.h(kVar, "sink");
        writeOrCountBytes(kVar, false);
    }
}
