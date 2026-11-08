package com.google.android.gms.cast;

import C3.C0101a;
import C3.C0102b;
import C3.H;
import C3.l;
import C3.t;
import C3.u;
import M3.a;
import P3.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.ads.AbstractC1762oA;
import com.google.android.gms.internal.cast.G;
import com.google.android.gms.internal.cast.K;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p000a.r;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public class MediaInfo extends a implements ReflectedParcelable {
    public static final Parcelable.Creator<MediaInfo> CREATOR;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f11703G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f11704H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f11705I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final l f11706J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final long f11707K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final List f11708L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final t f11709M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public String f11710N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public List f11711O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public List f11712P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final String f11713Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final u f11714R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final long f11715S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final String f11716T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final String f11717U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final String f11718V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final String f11719W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final JSONObject f11720X;

    static {
        Pattern pattern = H3.a.f3677a;
        CREATOR = new H(0);
    }

    public MediaInfo(String str, int i8, String str2, l lVar, long j8, ArrayList arrayList, t tVar, String str3, ArrayList arrayList2, ArrayList arrayList3, String str4, u uVar, long j9, String str5, String str6, String str7, String str8) {
        this.f11703G = str;
        this.f11704H = i8;
        this.f11705I = str2;
        this.f11706J = lVar;
        this.f11707K = j8;
        this.f11708L = arrayList;
        this.f11709M = tVar;
        this.f11710N = str3;
        if (str3 != null) {
            try {
                this.f11720X = new JSONObject(this.f11710N);
            } catch (JSONException unused) {
                this.f11720X = null;
                this.f11710N = null;
            }
        } else {
            this.f11720X = null;
        }
        this.f11711O = arrayList2;
        this.f11712P = arrayList3;
        this.f11713Q = str4;
        this.f11714R = uVar;
        this.f11715S = j9;
        this.f11716T = str5;
        this.f11717U = str6;
        this.f11718V = str7;
        this.f11719W = str8;
        if (this.f11703G == null && str6 == null && str4 == null) {
            throw new IllegalArgumentException("Either contentID or contentUrl or entity should be set");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaInfo)) {
            return false;
        }
        MediaInfo mediaInfo = (MediaInfo) obj;
        JSONObject jSONObject = this.f11720X;
        boolean z7 = jSONObject == null;
        JSONObject jSONObject2 = mediaInfo.f11720X;
        if (z7 != (jSONObject2 == null)) {
            return false;
        }
        return (jSONObject == null || jSONObject2 == null || d.a(jSONObject, jSONObject2)) && H3.a.e(this.f11703G, mediaInfo.f11703G) && this.f11704H == mediaInfo.f11704H && H3.a.e(this.f11705I, mediaInfo.f11705I) && H3.a.e(this.f11706J, mediaInfo.f11706J) && this.f11707K == mediaInfo.f11707K && H3.a.e(this.f11708L, mediaInfo.f11708L) && H3.a.e(this.f11709M, mediaInfo.f11709M) && H3.a.e(this.f11711O, mediaInfo.f11711O) && H3.a.e(this.f11712P, mediaInfo.f11712P) && H3.a.e(this.f11713Q, mediaInfo.f11713Q) && H3.a.e(this.f11714R, mediaInfo.f11714R) && this.f11715S == mediaInfo.f11715S && H3.a.e(this.f11716T, mediaInfo.f11716T) && H3.a.e(this.f11717U, mediaInfo.f11717U) && H3.a.e(this.f11718V, mediaInfo.f11718V) && H3.a.e(this.f11719W, mediaInfo.f11719W);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f11703G, Integer.valueOf(this.f11704H), this.f11705I, this.f11706J, Long.valueOf(this.f11707K), String.valueOf(this.f11720X), this.f11708L, this.f11709M, this.f11711O, this.f11712P, this.f11713Q, this.f11714R, Long.valueOf(this.f11715S), this.f11716T, this.f11718V, this.f11719W});
    }

    public final JSONObject i() {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("contentId", this.f11703G);
            jSONObject.putOpt("contentUrl", this.f11717U);
            int i8 = this.f11704H;
            if (i8 != 1) {
                str = i8 != 2 ? "NONE" : "LIVE";
            } else {
                str = "BUFFERED";
            }
            jSONObject.put("streamType", str);
            String str2 = this.f11705I;
            if (str2 != null) {
                jSONObject.put("contentType", str2);
            }
            l lVar = this.f11706J;
            if (lVar != null) {
                jSONObject.put("metadata", lVar.l());
            }
            long j8 = this.f11707K;
            if (j8 <= -1) {
                jSONObject.put("duration", JSONObject.NULL);
            } else {
                Pattern pattern = H3.a.f3677a;
                jSONObject.put("duration", j8 / 1000.0d);
            }
            List list = this.f11708L;
            if (list != null) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((MediaTrack) it.next()).i());
                }
                jSONObject.put("tracks", jSONArray);
            }
            t tVar = this.f11709M;
            if (tVar != null) {
                jSONObject.put("textTrackStyle", tVar.i());
            }
            JSONObject jSONObject2 = this.f11720X;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
            String str3 = this.f11713Q;
            if (str3 != null) {
                jSONObject.put("entity", str3);
            }
            if (this.f11711O != null) {
                JSONArray jSONArray2 = new JSONArray();
                Iterator it2 = this.f11711O.iterator();
                while (it2.hasNext()) {
                    jSONArray2.put(((C0102b) it2.next()).i());
                }
                jSONObject.put("breaks", jSONArray2);
            }
            if (this.f11712P != null) {
                JSONArray jSONArray3 = new JSONArray();
                Iterator it3 = this.f11712P.iterator();
                while (it3.hasNext()) {
                    jSONArray3.put(((C0101a) it3.next()).i());
                }
                jSONObject.put("breakClips", jSONArray3);
            }
            u uVar = this.f11714R;
            if (uVar != null) {
                jSONObject.put("vmapAdsRequest", uVar.i());
            }
            long j9 = this.f11715S;
            if (j9 != -1) {
                Pattern pattern2 = H3.a.f3677a;
                jSONObject.put("startAbsoluteTime", j9 / 1000.0d);
            }
            jSONObject.putOpt("atvEntity", this.f11716T);
            String str4 = this.f11718V;
            if (str4 != null) {
                jSONObject.put("hlsSegmentFormat", str4);
            }
            String str5 = this.f11719W;
            if (str5 != null) {
                jSONObject.put("hlsVideoSegmentFormat", str5);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public final void l(JSONObject jSONObject) throws JSONException {
        C0101a c0101a;
        C0102b c0102b;
        int i8 = 0;
        if (jSONObject.has("breaks")) {
            JSONArray jSONArray = jSONObject.getJSONArray("breaks");
            ArrayList arrayList = new ArrayList(jSONArray.length());
            int i9 = 0;
            while (i9 < jSONArray.length()) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i9);
                if (jSONObject2 != null && jSONObject2.has("id") && jSONObject2.has("position")) {
                    try {
                        String string = jSONObject2.getString("id");
                        long j8 = jSONObject2.getLong("position");
                        Pattern pattern = H3.a.f3677a;
                        long j9 = j8 * 1000;
                        boolean zOptBoolean = jSONObject2.optBoolean("isWatched");
                        long jOptLong = jSONObject2.optLong("duration") * 1000;
                        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("breakClipIds");
                        String[] strArr = new String[i8];
                        if (jSONArrayOptJSONArray != null) {
                            strArr = new String[jSONArrayOptJSONArray.length()];
                            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                                strArr[i10] = jSONArrayOptJSONArray.getString(i10);
                            }
                        }
                        c0102b = new C0102b(j9, string, jOptLong, zOptBoolean, strArr, jSONObject2.optBoolean("isEmbedded"), jSONObject2.optBoolean("expanded"));
                    } catch (JSONException e8) {
                        String message = e8.getMessage();
                        Locale locale = Locale.ROOT;
                        r.q("Error while creating an AdBreakInfo from JSON: ", message, "AdBreakInfo");
                        c0102b = null;
                    }
                } else {
                    c0102b = null;
                }
                if (c0102b == null) {
                    arrayList.clear();
                    break;
                } else {
                    arrayList.add(c0102b);
                    i9++;
                    i8 = 0;
                }
            }
            this.f11711O = new ArrayList(arrayList);
        }
        if (jSONObject.has("breakClips")) {
            JSONArray jSONArray2 = jSONObject.getJSONArray("breakClips");
            ArrayList arrayList2 = new ArrayList(jSONArray2.length());
            for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                JSONObject jSONObject3 = jSONArray2.getJSONObject(i11);
                if (jSONObject3 != null && jSONObject3.has("id")) {
                    try {
                        String string2 = jSONObject3.getString("id");
                        long jOptLong2 = jSONObject3.optLong("duration") * 1000;
                        String strB = H3.a.b(jSONObject3, "clickThroughUrl");
                        String strB2 = H3.a.b(jSONObject3, "contentUrl");
                        String strB3 = H3.a.b(jSONObject3, "mimeType");
                        if (strB3 == null) {
                            strB3 = H3.a.b(jSONObject3, "contentType");
                        }
                        String str = strB3;
                        String strB4 = H3.a.b(jSONObject3, "title");
                        JSONObject jSONObjectOptJSONObject = jSONObject3.optJSONObject("customData");
                        String strB5 = H3.a.b(jSONObject3, "contentId");
                        String strB6 = H3.a.b(jSONObject3, "posterUrl");
                        long jIntValue = jSONObject3.has("whenSkippable") ? ((long) ((Integer) jSONObject3.get("whenSkippable")).intValue()) * 1000 : -1L;
                        String strB7 = H3.a.b(jSONObject3, "hlsSegmentFormat");
                        JSONObject jSONObjectOptJSONObject2 = jSONObject3.optJSONObject("vastAdsRequest");
                        c0101a = new C0101a(string2, strB4, jOptLong2, strB2, str, strB, (jSONObjectOptJSONObject == 0 || jSONObjectOptJSONObject.length() == 0) ? null : jSONObjectOptJSONObject.toString(), strB5, strB6, jIntValue, strB7, jSONObjectOptJSONObject2 == null ? null : new u(H3.a.b(jSONObjectOptJSONObject2, "adTagUrl"), H3.a.b(jSONObjectOptJSONObject2, "adsResponse")));
                    } catch (JSONException e9) {
                        String message2 = e9.getMessage();
                        Locale locale2 = Locale.ROOT;
                        r.q("Error while creating an AdBreakClipInfo from JSON: ", message2, "AdBreakClipInfo");
                        c0101a = null;
                    }
                } else {
                    c0101a = null;
                }
                if (c0101a == null) {
                    arrayList2.clear();
                    break;
                }
                arrayList2.add(c0101a);
            }
            this.f11712P = new ArrayList(arrayList2);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        JSONObject jSONObject = this.f11720X;
        this.f11710N = jSONObject == null ? null : jSONObject.toString();
        int iX = AbstractC2987b.X(20293, parcel);
        String str = this.f11703G;
        if (str == null) {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        AbstractC2987b.Q(parcel, 2, str);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f11704H);
        AbstractC2987b.Q(parcel, 4, this.f11705I);
        AbstractC2987b.P(parcel, 5, this.f11706J, i8);
        AbstractC2987b.v0(parcel, 6, 8);
        parcel.writeLong(this.f11707K);
        AbstractC2987b.U(parcel, 7, this.f11708L);
        AbstractC2987b.P(parcel, 8, this.f11709M, i8);
        AbstractC2987b.Q(parcel, 9, this.f11710N);
        List list = this.f11711O;
        AbstractC2987b.U(parcel, 10, list == null ? null : Collections.unmodifiableList(list));
        List list2 = this.f11712P;
        AbstractC2987b.U(parcel, 11, list2 != null ? Collections.unmodifiableList(list2) : null);
        AbstractC2987b.Q(parcel, 12, this.f11713Q);
        AbstractC2987b.P(parcel, 13, this.f11714R, i8);
        AbstractC2987b.v0(parcel, 14, 8);
        parcel.writeLong(this.f11715S);
        AbstractC2987b.Q(parcel, 15, this.f11716T);
        AbstractC2987b.Q(parcel, 16, this.f11717U);
        AbstractC2987b.Q(parcel, 17, this.f11718V);
        AbstractC2987b.Q(parcel, 18, this.f11719W);
        AbstractC2987b.p0(iX, parcel);
    }

    public MediaInfo(JSONObject jSONObject) throws JSONException {
        MediaInfo mediaInfo;
        int i8;
        int i9;
        int i10;
        K kO;
        this(jSONObject.optString("contentId"), -1, null, null, -1L, null, null, null, null, null, null, null, -1L, null, null, null, null);
        String strOptString = jSONObject.optString("streamType", "NONE");
        if ("NONE".equals(strOptString)) {
            mediaInfo = this;
            mediaInfo.f11704H = 0;
        } else {
            mediaInfo = this;
            if ("BUFFERED".equals(strOptString)) {
                mediaInfo.f11704H = 1;
            } else if ("LIVE".equals(strOptString)) {
                mediaInfo.f11704H = 2;
            } else {
                mediaInfo.f11704H = -1;
            }
        }
        mediaInfo.f11705I = H3.a.b(jSONObject, "contentType");
        if (jSONObject.has("metadata")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("metadata");
            l lVar = new l(jSONObject2.getInt("metadataType"));
            mediaInfo.f11706J = lVar;
            lVar.n(jSONObject2);
        }
        mediaInfo.f11707K = -1L;
        if (mediaInfo.f11704H != 2 && jSONObject.has("duration") && !jSONObject.isNull("duration")) {
            double dOptDouble = jSONObject.optDouble("duration", 0.0d);
            if (!Double.isNaN(dOptDouble) && !Double.isInfinite(dOptDouble) && dOptDouble >= 0.0d) {
                mediaInfo.f11707K = (long) (dOptDouble * 1000.0d);
            }
        }
        int i11 = 4;
        if (jSONObject.has("tracks")) {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray("tracks");
            int i12 = 0;
            while (i12 < jSONArray.length()) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i12);
                long j8 = jSONObject3.getLong("trackId");
                String strOptString2 = jSONObject3.optString("type");
                if ("TEXT".equals(strOptString2)) {
                    i9 = 1;
                } else if ("AUDIO".equals(strOptString2)) {
                    i9 = 2;
                } else {
                    i9 = "VIDEO".equals(strOptString2) ? 3 : 0;
                }
                String strB = H3.a.b(jSONObject3, "trackContentId");
                String strB2 = H3.a.b(jSONObject3, "trackContentType");
                String strB3 = H3.a.b(jSONObject3, "name");
                String strB4 = H3.a.b(jSONObject3, "language");
                if (jSONObject3.has("subtype")) {
                    String string = jSONObject3.getString("subtype");
                    if ("SUBTITLES".equals(string)) {
                        i10 = 1;
                    } else if ("CAPTIONS".equals(string)) {
                        i10 = 2;
                    } else if ("DESCRIPTIONS".equals(string)) {
                        i10 = 3;
                    } else if ("CHAPTERS".equals(string)) {
                        i10 = 4;
                    } else {
                        i10 = "METADATA".equals(string) ? 5 : -1;
                    }
                } else {
                    i10 = 0;
                }
                if (jSONObject3.has("roles")) {
                    Object[] objArrCopyOf = new Object[i11];
                    JSONArray jSONArray2 = jSONObject3.getJSONArray("roles");
                    int i13 = 0;
                    int i14 = 0;
                    while (i14 < jSONArray2.length()) {
                        String strOptString3 = jSONArray2.optString(i14);
                        strOptString3.getClass();
                        int i15 = i13 + 1;
                        int length = objArrCopyOf.length;
                        if (length < i15) {
                            objArrCopyOf = Arrays.copyOf(objArrCopyOf, AbstractC1762oA.a(length, i15));
                        }
                        objArrCopyOf[i13] = strOptString3;
                        i14++;
                        i13 = i15;
                    }
                    kO = G.o(i13, objArrCopyOf);
                } else {
                    kO = null;
                }
                arrayList.add(new MediaTrack(j8, i9, strB, strB2, strB3, strB4, i10, kO, jSONObject3.optJSONObject("customData")));
                i12++;
                i11 = 4;
            }
            mediaInfo.f11708L = new ArrayList(arrayList);
        } else {
            mediaInfo.f11708L = null;
        }
        if (jSONObject.has("textTrackStyle")) {
            JSONObject jSONObject4 = jSONObject.getJSONObject("textTrackStyle");
            t tVar = new t(1.0f, 0, 0, -1, 0, -1, 0, 0, null, -1, -1, null);
            tVar.f1597G = (float) jSONObject4.optDouble("fontScale", 1.0d);
            tVar.f1598H = t.l(jSONObject4.optString("foregroundColor"));
            tVar.f1599I = t.l(jSONObject4.optString("backgroundColor"));
            if (jSONObject4.has("edgeType")) {
                String string2 = jSONObject4.getString("edgeType");
                if ("NONE".equals(string2)) {
                    tVar.f1600J = 0;
                } else if ("OUTLINE".equals(string2)) {
                    tVar.f1600J = 1;
                } else if ("DROP_SHADOW".equals(string2)) {
                    tVar.f1600J = 2;
                } else if ("RAISED".equals(string2)) {
                    tVar.f1600J = 3;
                } else if ("DEPRESSED".equals(string2)) {
                    tVar.f1600J = 4;
                }
            }
            tVar.f1601K = t.l(jSONObject4.optString("edgeColor"));
            if (jSONObject4.has("windowType")) {
                String string3 = jSONObject4.getString("windowType");
                if ("NONE".equals(string3)) {
                    tVar.f1602L = 0;
                } else if ("NORMAL".equals(string3)) {
                    tVar.f1602L = 1;
                } else if ("ROUNDED_CORNERS".equals(string3)) {
                    i8 = 2;
                    tVar.f1602L = 2;
                }
                i8 = 2;
            } else {
                i8 = 2;
            }
            tVar.f1603M = t.l(jSONObject4.optString("windowColor"));
            if (tVar.f1602L == i8) {
                tVar.f1604N = jSONObject4.optInt("windowRoundedCornerRadius", 0);
            }
            tVar.f1605O = H3.a.b(jSONObject4, "fontFamily");
            if (jSONObject4.has("fontGenericFamily")) {
                String string4 = jSONObject4.getString("fontGenericFamily");
                if ("SANS_SERIF".equals(string4)) {
                    tVar.f1606P = 0;
                } else if ("MONOSPACED_SANS_SERIF".equals(string4)) {
                    tVar.f1606P = 1;
                } else if ("SERIF".equals(string4)) {
                    tVar.f1606P = 2;
                } else if ("MONOSPACED_SERIF".equals(string4)) {
                    tVar.f1606P = 3;
                } else if ("CASUAL".equals(string4)) {
                    tVar.f1606P = 4;
                } else if ("CURSIVE".equals(string4)) {
                    tVar.f1606P = 5;
                } else if ("SMALL_CAPITALS".equals(string4)) {
                    tVar.f1606P = 6;
                }
            }
            if (jSONObject4.has("fontStyle")) {
                String string5 = jSONObject4.getString("fontStyle");
                if ("NORMAL".equals(string5)) {
                    tVar.f1607Q = 0;
                } else if ("BOLD".equals(string5)) {
                    tVar.f1607Q = 1;
                } else if ("ITALIC".equals(string5)) {
                    tVar.f1607Q = 2;
                } else if ("BOLD_ITALIC".equals(string5)) {
                    tVar.f1607Q = 3;
                }
            }
            tVar.f1609S = jSONObject4.optJSONObject("customData");
            mediaInfo.f11709M = tVar;
        } else {
            mediaInfo.f11709M = null;
        }
        l(jSONObject);
        mediaInfo.f11720X = jSONObject.optJSONObject("customData");
        mediaInfo.f11713Q = H3.a.b(jSONObject, "entity");
        mediaInfo.f11716T = H3.a.b(jSONObject, "atvEntity");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("vmapAdsRequest");
        mediaInfo.f11714R = jSONObjectOptJSONObject != null ? new u(H3.a.b(jSONObjectOptJSONObject, "adTagUrl"), H3.a.b(jSONObjectOptJSONObject, "adsResponse")) : null;
        if (jSONObject.has("startAbsoluteTime") && !jSONObject.isNull("startAbsoluteTime")) {
            double dOptDouble2 = jSONObject.optDouble("startAbsoluteTime");
            if (!Double.isNaN(dOptDouble2) && !Double.isInfinite(dOptDouble2) && dOptDouble2 >= 0.0d) {
                mediaInfo.f11715S = (long) (dOptDouble2 * 1000.0d);
            }
        }
        if (jSONObject.has("contentUrl")) {
            mediaInfo.f11717U = jSONObject.optString("contentUrl");
        }
        mediaInfo.f11718V = H3.a.b(jSONObject, "hlsSegmentFormat");
        mediaInfo.f11719W = H3.a.b(jSONObject, "hlsVideoSegmentFormat");
    }
}
