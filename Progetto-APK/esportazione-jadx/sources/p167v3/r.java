package p167v3;

import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.internal.ads.C0973Wc;
import com.google.android.gms.internal.ads.Q7;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import okhttp3.HttpUrl;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f30681a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f30682b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0973Wc f30683c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Bundle f30684d = new Bundle();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f30685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f30686f;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:23:0x005d  */
    public r(JsonReader jsonReader, C0973Wc c0973Wc) throws IOException {
        C0973Wc c0973Wc2;
        Bundle bundle;
        byte b8;
        this.f30685e = -1L;
        this.f30686f = -1L;
        this.f30683c = c0973Wc;
        HashMap map = new HashMap();
        jsonReader.beginObject();
        String strNextString = HttpUrl.FRAGMENT_ENCODE_SET;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            switch (strNextName == null ? HttpUrl.FRAGMENT_ENCODE_SET : strNextName) {
                case "start_time":
                    b8 = 2;
                    break;
                case "params":
                    b8 = 0;
                    break;
                case "signal_dictionary":
                    b8 = 1;
                    break;
                case "end_time":
                    b8 = 3;
                    break;
                default:
                    b8 = -1;
                    break;
            }
            if (b8 == 0) {
                strNextString = jsonReader.nextString();
            } else if (b8 == 1) {
                map = new HashMap();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    map.put(jsonReader.nextName(), jsonReader.nextString());
                }
                jsonReader.endObject();
            } else if (b8 == 2) {
                this.f30685e = jsonReader.nextLong();
            } else if (b8 != 3) {
                jsonReader.skipValue();
            } else {
                this.f30686f = jsonReader.nextLong();
            }
        }
        this.f30681a = strNextString;
        jsonReader.endObject();
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.f30684d.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15734U1)).booleanValue() || (c0973Wc2 = this.f30683c) == null || (bundle = c0973Wc2.f17262S) == null) {
            return;
        }
        bundle.putLong("get-signals-sdkcore-start", this.f30685e);
        this.f30683c.f17262S.putLong("get-signals-sdkcore-end", this.f30686f);
    }
}
