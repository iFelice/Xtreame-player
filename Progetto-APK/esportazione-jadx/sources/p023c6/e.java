package p023c6;

import F2.G;
import Q6.m;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c[] f11458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f11459b;

    static {
        m mVar = m.f6065J;
        G.C(":");
        c cVar = new c(c.f11446h, HttpUrl.FRAGMENT_ENCODE_SET);
        m mVar2 = c.f11443e;
        c cVar2 = new c(mVar2, "GET");
        c cVar3 = new c(mVar2, "POST");
        m mVar3 = c.f11444f;
        c cVar4 = new c(mVar3, MqttTopic.TOPIC_LEVEL_SEPARATOR);
        c cVar5 = new c(mVar3, "/index.html");
        m mVar4 = c.f11445g;
        c cVar6 = new c(mVar4, "http");
        c cVar7 = new c(mVar4, "https");
        m mVar5 = c.f11442d;
        c[] cVarArr = {cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, new c(mVar5, "200"), new c(mVar5, "204"), new c(mVar5, "206"), new c(mVar5, "304"), new c(mVar5, "400"), new c(mVar5, "404"), new c(mVar5, "500"), new c("accept-charset", HttpUrl.FRAGMENT_ENCODE_SET), new c("accept-encoding", "gzip, deflate"), new c("accept-language", HttpUrl.FRAGMENT_ENCODE_SET), new c("accept-ranges", HttpUrl.FRAGMENT_ENCODE_SET), new c("accept", HttpUrl.FRAGMENT_ENCODE_SET), new c("access-control-allow-origin", HttpUrl.FRAGMENT_ENCODE_SET), new c("age", HttpUrl.FRAGMENT_ENCODE_SET), new c("allow", HttpUrl.FRAGMENT_ENCODE_SET), new c("authorization", HttpUrl.FRAGMENT_ENCODE_SET), new c("cache-control", HttpUrl.FRAGMENT_ENCODE_SET), new c("content-disposition", HttpUrl.FRAGMENT_ENCODE_SET), new c("content-encoding", HttpUrl.FRAGMENT_ENCODE_SET), new c("content-language", HttpUrl.FRAGMENT_ENCODE_SET), new c("content-length", HttpUrl.FRAGMENT_ENCODE_SET), new c("content-location", HttpUrl.FRAGMENT_ENCODE_SET), new c("content-range", HttpUrl.FRAGMENT_ENCODE_SET), new c("content-type", HttpUrl.FRAGMENT_ENCODE_SET), new c("cookie", HttpUrl.FRAGMENT_ENCODE_SET), new c("date", HttpUrl.FRAGMENT_ENCODE_SET), new c("etag", HttpUrl.FRAGMENT_ENCODE_SET), new c("expect", HttpUrl.FRAGMENT_ENCODE_SET), new c("expires", HttpUrl.FRAGMENT_ENCODE_SET), new c("from", HttpUrl.FRAGMENT_ENCODE_SET), new c("host", HttpUrl.FRAGMENT_ENCODE_SET), new c("if-match", HttpUrl.FRAGMENT_ENCODE_SET), new c("if-modified-since", HttpUrl.FRAGMENT_ENCODE_SET), new c("if-none-match", HttpUrl.FRAGMENT_ENCODE_SET), new c("if-range", HttpUrl.FRAGMENT_ENCODE_SET), new c("if-unmodified-since", HttpUrl.FRAGMENT_ENCODE_SET), new c("last-modified", HttpUrl.FRAGMENT_ENCODE_SET), new c("link", HttpUrl.FRAGMENT_ENCODE_SET), new c("location", HttpUrl.FRAGMENT_ENCODE_SET), new c("max-forwards", HttpUrl.FRAGMENT_ENCODE_SET), new c("proxy-authenticate", HttpUrl.FRAGMENT_ENCODE_SET), new c("proxy-authorization", HttpUrl.FRAGMENT_ENCODE_SET), new c("range", HttpUrl.FRAGMENT_ENCODE_SET), new c("referer", HttpUrl.FRAGMENT_ENCODE_SET), new c("refresh", HttpUrl.FRAGMENT_ENCODE_SET), new c("retry-after", HttpUrl.FRAGMENT_ENCODE_SET), new c("server", HttpUrl.FRAGMENT_ENCODE_SET), new c("set-cookie", HttpUrl.FRAGMENT_ENCODE_SET), new c("strict-transport-security", HttpUrl.FRAGMENT_ENCODE_SET), new c("transfer-encoding", HttpUrl.FRAGMENT_ENCODE_SET), new c("user-agent", HttpUrl.FRAGMENT_ENCODE_SET), new c("vary", HttpUrl.FRAGMENT_ENCODE_SET), new c("via", HttpUrl.FRAGMENT_ENCODE_SET), new c("www-authenticate", HttpUrl.FRAGMENT_ENCODE_SET)};
        f11458a = cVarArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(61);
        for (int i8 = 0; i8 < 61; i8++) {
            if (!linkedHashMap.containsKey(cVarArr[i8].f11447a)) {
                linkedHashMap.put(cVarArr[i8].f11447a, Integer.valueOf(i8));
            }
        }
        f11459b = Collections.unmodifiableMap(linkedHashMap);
    }

    public static void a(m mVar) throws IOException {
        int iC = mVar.c();
        for (int i8 = 0; i8 < iC; i8++) {
            byte bF = mVar.f(i8);
            if (bF >= 65 && bF <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: ".concat(mVar.k()));
            }
        }
    }
}
