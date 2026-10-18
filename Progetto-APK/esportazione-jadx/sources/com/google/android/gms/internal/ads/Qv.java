package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Qv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f16149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f16152d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f16153e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16154f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f16155g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f16156h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f16157i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final J f16158j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Bundle f16159k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16160l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f16161m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16162n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final JSONObject f16163o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final JSONObject f16164p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f16165q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f16166r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final long f16167s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final long f16168t;

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public Qv(JsonReader jsonReader) throws JSONException, IOException {
        List listEmptyList = Collections.emptyList();
        Bundle bundle = new Bundle();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jsonReader.beginObject();
        String strNextString = HttpUrl.FRAGMENT_ENCODE_SET;
        String strNextString2 = HttpUrl.FRAGMENT_ENCODE_SET;
        String strNextString3 = strNextString2;
        String strNextString4 = strNextString3;
        String strNextString5 = strNextString4;
        String strNextString6 = strNextString5;
        J j8 = null;
        int iNextInt = 0;
        int iNextInt2 = 0;
        boolean zNextBoolean = false;
        long j9 = -1;
        long j10 = -1;
        long jNextLong = 0;
        int iNextInt3 = -1;
        int iMax = 1;
        String strNextString7 = strNextString6;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (Objects.equals(strNextName, "nofill_urls")) {
                listEmptyList = Q3.b.O(jsonReader);
            } else if ("refresh_interval".equals(strNextName)) {
                iNextInt = jsonReader.nextInt();
            } else if (Objects.equals(strNextName, "refresh_load_delay_time_interval")) {
                iNextInt3 = jsonReader.nextInt();
            } else if ("gws_query_id".equals(strNextName)) {
                strNextString = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(strNextName)) {
                strNextString2 = jsonReader.nextString();
            } else if ("is_idless".equals(strNextName)) {
                zNextBoolean = jsonReader.nextBoolean();
            } else if ("response_code".equals(strNextName)) {
                iNextInt2 = jsonReader.nextInt();
            } else if ("latency".equals(strNextName)) {
                jNextLong = jsonReader.nextLong();
            } else {
                J7 j11 = Q7.D7;
                String str = strNextString4;
                C3099q c3099q = C3099q.f26624d;
                JSONObject jSONObject3 = jSONObject2;
                if (((Boolean) c3099q.f26627c.a(j11)).booleanValue() && "public_error".equals(strNextName) && jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                    j8 = new J(jsonReader);
                } else if ("bidding_data".equals(strNextName)) {
                    strNextString7 = jsonReader.nextString();
                } else {
                    J7 j12 = Q7.I9;
                    O7 o7 = c3099q.f26627c;
                    if (((Boolean) o7.a(j12)).booleanValue() && Objects.equals(strNextName, "topics_should_record_observation")) {
                        jsonReader.nextBoolean();
                    } else if ("adapter_response_replacement_key".equals(strNextName)) {
                        strNextString4 = jsonReader.nextString();
                        jSONObject2 = jSONObject3;
                    } else if ("response_info_extras".equals(strNextName)) {
                        if (((Boolean) o7.a(Q7.f15898n6)).booleanValue()) {
                            try {
                                try {
                                    Bundle bundleA = Q3.b.A(Q3.b.a0(jsonReader));
                                    if (bundleA != null) {
                                        bundle = bundleA;
                                    }
                                } catch (IllegalStateException unused) {
                                    jsonReader.skipValue();
                                }
                            } catch (IOException | JSONException unused2) {
                            }
                        } else {
                            jsonReader.skipValue();
                        }
                    } else if ("adRequestPostBody".equals(strNextName)) {
                        if (((Boolean) o7.a(Q7.A8)).booleanValue()) {
                            strNextString6 = jsonReader.nextString();
                        } else {
                            jsonReader.skipValue();
                        }
                    } else if (!"adRequestUrl".equals(strNextName)) {
                        J7 j13 = Q7.B8;
                        if (((Boolean) o7.a(j13)).booleanValue() && Objects.equals(strNextName, "adResponseBody")) {
                            strNextString3 = jsonReader.nextString();
                        } else if (((Boolean) o7.a(j13)).booleanValue() && Objects.equals(strNextName, "adResponseHeaders")) {
                            jSONObject = Q3.b.a0(jsonReader);
                        } else if (Objects.equals(strNextName, "max_parallel_renderers")) {
                            iMax = Math.max(1, jsonReader.nextInt());
                        } else if (((Boolean) o7.a(Q7.I8)).booleanValue() && Objects.equals(strNextName, "inspector_ad_transaction_extras")) {
                            jSONObject2 = Q3.b.a0(jsonReader);
                            strNextString4 = str;
                        } else if (((Boolean) o7.a(Q7.f15741V1)).booleanValue() && Objects.equals(strNextName, "latency_extras")) {
                            try {
                                Bundle bundleA2 = Q3.b.A(Q3.b.a0(jsonReader));
                                if (bundleA2 != null) {
                                    double d6 = bundleA2.getDouble("start_time");
                                    long j14 = (d6 > 9.223372036854776E18d || d6 < -9.223372036854776E18d) ? -1L : (long) d6;
                                    try {
                                        double d8 = bundleA2.getDouble("end_time");
                                        j9 = (d8 > 9.223372036854776E18d || d8 < -9.223372036854776E18d) ? -1L : (long) d8;
                                    } catch (IOException | JSONException unused3) {
                                    } catch (IllegalStateException unused4) {
                                        j10 = j14;
                                        jsonReader.skipValue();
                                        strNextString4 = str;
                                        jSONObject2 = jSONObject3;
                                    }
                                    j10 = j14;
                                }
                            } catch (IllegalStateException unused5) {
                            }
                        } else {
                            jsonReader.skipValue();
                        }
                    } else if (((Boolean) o7.a(Q7.A8)).booleanValue()) {
                        strNextString5 = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                    }
                }
                strNextString4 = str;
                jSONObject2 = jSONObject3;
            }
        }
        JSONObject jSONObject4 = jSONObject2;
        String str2 = strNextString4;
        jsonReader.endObject();
        this.f16149a = listEmptyList;
        this.f16151c = iNextInt;
        if (((Boolean) AbstractC2227x8.f21844d.l()).booleanValue()) {
            this.f16152d = -1;
        } else {
            C1294f8 c1294f8 = AbstractC1450i8.f19242a;
            if (((Long) c1294f8.l()).longValue() > -1) {
                this.f16152d = ((Long) c1294f8.l()).intValue();
            } else {
                this.f16152d = iNextInt3;
            }
        }
        this.f16150b = strNextString;
        this.f16153e = strNextString2;
        this.f16154f = iNextInt2;
        this.f16155g = jNextLong;
        this.f16158j = j8;
        this.f16156h = zNextBoolean;
        this.f16157i = strNextString7;
        this.f16159k = bundle;
        this.f16160l = strNextString5;
        this.f16161m = strNextString6;
        this.f16162n = strNextString3;
        this.f16163o = jSONObject;
        this.f16164p = jSONObject4;
        this.f16165q = str2;
        C1294f8 c1294f9 = AbstractC2123v8.f21446a;
        this.f16166r = ((Long) c1294f9.l()).longValue() > 0 ? ((Long) c1294f9.l()).intValue() : iMax;
        this.f16167s = j10;
        this.f16168t = j9;
    }
}
