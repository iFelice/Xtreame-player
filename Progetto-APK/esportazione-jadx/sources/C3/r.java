package C3;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.cast.MediaInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class r extends M3.a {
    public static final Parcelable.Creator<r> CREATOR;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public MediaInfo f1570G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f1571H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f1572I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public double f1573J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f1574K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f1575L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public long f1576M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f1577N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public double f1578O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f1579P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public long[] f1580Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f1581R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f1582S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public String f1583T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public JSONObject f1584U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f1585V;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public boolean f1587X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public C0103c f1588Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public v f1589Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public C0110j f1590a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public n f1591b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f1592c0;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final ArrayList f1586W = new ArrayList();

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final SparseArray f1593d0 = new SparseArray();

    static {
        com.bumptech.glide.c.f("The log tag cannot be null or empty.", "MediaStatus");
        TextUtils.isEmpty(null);
        CREATOR = new H(8);
    }

    public r(MediaInfo mediaInfo, long j8, int i8, double d6, int i9, int i10, long j9, long j10, double d8, boolean z7, long[] jArr, int i11, int i12, String str, int i13, ArrayList arrayList, boolean z8, C0103c c0103c, v vVar, C0110j c0110j, n nVar) {
        this.f1570G = mediaInfo;
        this.f1571H = j8;
        this.f1572I = i8;
        this.f1573J = d6;
        this.f1574K = i9;
        this.f1575L = i10;
        this.f1576M = j9;
        this.f1577N = j10;
        this.f1578O = d8;
        this.f1579P = z7;
        this.f1580Q = jArr;
        this.f1581R = i11;
        this.f1582S = i12;
        this.f1583T = str;
        if (str != null) {
            try {
                this.f1584U = new JSONObject(this.f1583T);
            } catch (JSONException unused) {
                this.f1584U = null;
                this.f1583T = null;
            }
        } else {
            this.f1584U = null;
        }
        this.f1585V = i13;
        if (arrayList != null && !arrayList.isEmpty()) {
            l(arrayList);
        }
        this.f1587X = z8;
        this.f1588Y = c0103c;
        this.f1589Z = vVar;
        this.f1590a0 = c0110j;
        this.f1591b0 = nVar;
        boolean z9 = false;
        if (nVar != null && nVar.f1555P) {
            z9 = true;
        }
        this.f1592c0 = z9;
    }

    public final boolean equals(Object obj) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return (this.f1584U == null) == (rVar.f1584U == null) && this.f1571H == rVar.f1571H && this.f1572I == rVar.f1572I && this.f1573J == rVar.f1573J && this.f1574K == rVar.f1574K && this.f1575L == rVar.f1575L && this.f1576M == rVar.f1576M && this.f1578O == rVar.f1578O && this.f1579P == rVar.f1579P && this.f1581R == rVar.f1581R && this.f1582S == rVar.f1582S && this.f1585V == rVar.f1585V && Arrays.equals(this.f1580Q, rVar.f1580Q) && H3.a.e(Long.valueOf(this.f1577N), Long.valueOf(rVar.f1577N)) && H3.a.e(this.f1586W, rVar.f1586W) && H3.a.e(this.f1570G, rVar.f1570G) && ((jSONObject = this.f1584U) == null || (jSONObject2 = rVar.f1584U) == null || P3.d.a(jSONObject, jSONObject2)) && this.f1587X == rVar.f1587X && H3.a.e(this.f1588Y, rVar.f1588Y) && H3.a.e(this.f1589Z, rVar.f1589Z) && H3.a.e(this.f1590a0, rVar.f1590a0) && U4.a.c(this.f1591b0, rVar.f1591b0) && this.f1592c0 == rVar.f1592c0;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1570G, Long.valueOf(this.f1571H), Integer.valueOf(this.f1572I), Double.valueOf(this.f1573J), Integer.valueOf(this.f1574K), Integer.valueOf(this.f1575L), Long.valueOf(this.f1576M), Long.valueOf(this.f1577N), Double.valueOf(this.f1578O), Boolean.valueOf(this.f1579P), Integer.valueOf(Arrays.hashCode(this.f1580Q)), Integer.valueOf(this.f1581R), Integer.valueOf(this.f1582S), String.valueOf(this.f1584U), Integer.valueOf(this.f1585V), this.f1586W, Boolean.valueOf(this.f1587X), this.f1588Y, this.f1589Z, this.f1590a0, this.f1591b0});
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:110:0x01a9 A[EDGE_INSN: B:110:0x01a9->B:111:0x01ac BREAK  A[LOOP:0: B:103:0x0196->B:107:0x01a3]] */
    /* JADX WARN: Code duplicated, block: B:141:0x0222  */
    /* JADX WARN: Code duplicated, block: B:148:0x022f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:161:0x025b  */
    /* JADX WARN: Code duplicated, block: B:231:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:278:0x0489  */
    public final int i(JSONObject jSONObject, int i8) throws JSONException {
        JSONObject jSONObject2;
        int i9;
        long[] jArr;
        boolean z7;
        C0103c c0103c;
        int i10;
        v vVar;
        C0110j c0110j;
        int i11;
        String str;
        String str2;
        m mVar;
        int iIntValue;
        ArrayList arrayList;
        int iOptInt;
        long jOptDouble;
        String str3;
        String str4;
        String str5;
        ArrayList arrayList2;
        boolean zOptBoolean;
        m mVar2;
        int i12;
        ArrayList arrayList3;
        ArrayList arrayList4;
        MediaInfo mediaInfo;
        boolean z8;
        MediaInfo mediaInfo2;
        int i13;
        int i14;
        int i15;
        int i16;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("extendedStatus");
        if (jSONObjectOptJSONObject != null) {
            try {
                ArrayList arrayList5 = new ArrayList();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    arrayList5.add(itKeys.next());
                }
                jSONObject2 = new JSONObject(jSONObject, (String[]) arrayList5.toArray(new String[0]));
                Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                while (itKeys2.hasNext()) {
                    String next = itKeys2.next();
                    jSONObject2.put(next, jSONObjectOptJSONObject.get(next));
                }
                jSONObject2.remove("extendedStatus");
            } catch (JSONException unused) {
                jSONObject2 = jSONObject;
            }
        } else {
            jSONObject2 = jSONObject;
        }
        long j8 = jSONObject2.getLong("mediaSessionId");
        if (j8 != this.f1571H) {
            this.f1571H = j8;
            i9 = 1;
        } else {
            i9 = 0;
        }
        if (jSONObject2.has("playerState")) {
            String string = jSONObject2.getString("playerState");
            if (string.equals("IDLE")) {
                i15 = 1;
            } else if (string.equals("PLAYING")) {
                i15 = 2;
            } else if (string.equals("PAUSED")) {
                i15 = 3;
            } else if (string.equals("BUFFERING")) {
                i15 = 4;
            } else {
                i15 = string.equals("LOADING") ? 5 : 0;
            }
            if (i15 != this.f1574K) {
                this.f1574K = i15;
                i9 |= 2;
            }
            if (i15 == 1 && jSONObject2.has("idleReason")) {
                String string2 = jSONObject2.getString("idleReason");
                if (string2.equals("CANCELLED")) {
                    i16 = 2;
                } else if (string2.equals("INTERRUPTED")) {
                    i16 = 3;
                } else if (string2.equals("FINISHED")) {
                    i16 = 1;
                } else {
                    i16 = string2.equals("ERROR") ? 4 : 0;
                }
                if (i16 != this.f1575L) {
                    this.f1575L = i16;
                    i9 |= 2;
                }
            }
        }
        if (jSONObject2.has("playbackRate")) {
            double d6 = jSONObject2.getDouble("playbackRate");
            if (this.f1573J != d6) {
                this.f1573J = d6;
                i9 |= 2;
            }
        }
        if (jSONObject2.has("currentTime")) {
            double d8 = jSONObject2.getDouble("currentTime");
            Pattern pattern = H3.a.f3677a;
            long j9 = (long) (d8 * 1000.0d);
            if (j9 != this.f1576M) {
                this.f1576M = j9;
                i9 |= 2;
            }
            i9 |= 128;
        }
        if (jSONObject2.has("supportedMediaCommands")) {
            long j10 = jSONObject2.getLong("supportedMediaCommands");
            if (j10 != this.f1577N) {
                this.f1577N = j10;
                i9 |= 2;
            }
        }
        if (jSONObject2.has("volume") && i8 == 0) {
            JSONObject jSONObject3 = jSONObject2.getJSONObject("volume");
            double d9 = jSONObject3.getDouble("level");
            if (d9 != this.f1578O) {
                this.f1578O = d9;
                i9 |= 2;
            }
            boolean z9 = jSONObject3.getBoolean("muted");
            if (z9 != this.f1579P) {
                this.f1579P = z9;
                i9 |= 2;
            }
        }
        JSONArray jSONArray = jSONObject2.has("activeTrackIds") ? jSONObject2.getJSONArray("activeTrackIds") : null;
        Pattern pattern2 = H3.a.f3677a;
        if (jSONArray == null) {
            jArr = null;
        } else {
            jArr = new long[jSONArray.length()];
            for (int i17 = 0; i17 < jSONArray.length(); i17++) {
                jArr[i17] = jSONArray.getLong(i17);
            }
        }
        if (jArr != null) {
            long[] jArr2 = this.f1580Q;
            if (jArr2 == null || jArr2.length != jArr.length) {
                this.f1580Q = jArr;
                i9 |= 2;
                break;
            }
            for (int i18 = 0; i18 < jArr.length; i18++) {
                if (this.f1580Q[i18] != jArr[i18]) {
                    this.f1580Q = jArr;
                    i9 |= 2;
                    break;
                }
            }
        } else if (this.f1580Q != null) {
            this.f1580Q = jArr;
            i9 |= 2;
            break;
        }
        if (jSONObject2.has("customData")) {
            this.f1584U = jSONObject2.getJSONObject("customData");
            this.f1583T = null;
            i9 |= 2;
        }
        if (jSONObject2.has("media")) {
            JSONObject jSONObject4 = jSONObject2.getJSONObject("media");
            MediaInfo mediaInfo3 = new MediaInfo(jSONObject4);
            MediaInfo mediaInfo4 = this.f1570G;
            if (mediaInfo4 == null || !mediaInfo4.equals(mediaInfo3)) {
                this.f1570G = mediaInfo3;
                i9 |= 2;
            }
            if (jSONObject4.has("metadata")) {
                i9 |= 4;
            }
        }
        if (jSONObject2.has("currentItemId") && this.f1572I != (i14 = jSONObject2.getInt("currentItemId"))) {
            this.f1572I = i14;
            i9 |= 2;
        }
        int iOptInt2 = jSONObject2.optInt("preloadedItemId", 0);
        if (this.f1582S != iOptInt2) {
            this.f1582S = iOptInt2;
            i9 |= 16;
        }
        int iOptInt3 = jSONObject2.optInt("loadingItemId", 0);
        if (this.f1581R != iOptInt3) {
            this.f1581R = iOptInt3;
            i9 |= 2;
        }
        MediaInfo mediaInfo5 = this.f1570G;
        int i19 = mediaInfo5 == null ? -1 : mediaInfo5.f11704H;
        int i20 = this.f1574K;
        int i21 = this.f1575L;
        int i22 = this.f1581R;
        if (i20 != 1) {
            z7 = false;
        } else if (i21 != 1) {
            if (i21 != 2) {
                if (i21 == 3) {
                    if (i22 != 0) {
                        z7 = false;
                    }
                }
            } else if (i19 == 2) {
                z7 = false;
            }
            z7 = true;
        } else if (i22 != 0) {
            z7 = true;
        } else {
            z7 = false;
        }
        ArrayList arrayList6 = this.f1586W;
        SparseArray sparseArray = this.f1593d0;
        if (z7) {
            this.f1572I = 0;
            this.f1581R = 0;
            this.f1582S = 0;
            if (!arrayList6.isEmpty()) {
                i9 |= 8;
                this.f1585V = 0;
                arrayList6.clear();
                sparseArray.clear();
            }
        } else {
            if (jSONObject2.has("repeatMode")) {
                Integer numD = U4.a.d(jSONObject2.getString("repeatMode"));
                int iIntValue2 = numD == null ? this.f1585V : numD.intValue();
                if (this.f1585V != iIntValue2) {
                    this.f1585V = iIntValue2;
                    z8 = true;
                } else {
                    z8 = false;
                }
            } else {
                z8 = false;
            }
            if (jSONObject2.has("items")) {
                JSONArray jSONArray2 = jSONObject2.getJSONArray("items");
                int length = jSONArray2.length();
                SparseArray sparseArray2 = new SparseArray();
                for (int i23 = 0; i23 < length; i23++) {
                    sparseArray2.put(i23, Integer.valueOf(jSONArray2.getJSONObject(i23).getInt("itemId")));
                }
                ArrayList arrayList7 = new ArrayList();
                int i24 = 0;
                while (i24 < length) {
                    Integer num = (Integer) sparseArray2.get(i24);
                    JSONObject jSONObject5 = jSONArray2.getJSONObject(i24);
                    Integer num2 = (Integer) sparseArray.get(num.intValue());
                    p pVar = num2 == null ? null : (p) arrayList6.get(num2.intValue());
                    if (pVar != null) {
                        boolean zI = pVar.i(jSONObject5) | z8;
                        arrayList7.add(pVar);
                        if (i24 == ((Integer) sparseArray.get(num.intValue())).intValue()) {
                            z8 = zI;
                            i13 = 1;
                        }
                        i24 += i13;
                    } else if (num.intValue() != this.f1572I || (mediaInfo2 = this.f1570G) == null) {
                        arrayList7.add(new p(jSONObject5));
                    } else {
                        p pVarA = new o(mediaInfo2).a();
                        pVarA.i(jSONObject5);
                        arrayList7.add(pVarA);
                    }
                    i13 = 1;
                    z8 = true;
                    i24 += i13;
                }
                z8 |= !(arrayList6.size() == length);
                l(arrayList7);
            }
            if (z8) {
                i9 |= 8;
            }
        }
        int i25 = i9;
        JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("breakStatus");
        Parcelable.Creator<C0103c> creator = C0103c.CREATOR;
        if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.has("currentBreakTime") && jSONObjectOptJSONObject2.has("currentBreakClipTime")) {
            try {
                long j11 = jSONObjectOptJSONObject2.getLong("currentBreakTime");
                Pattern pattern3 = H3.a.f3677a;
                long j12 = j11 * 1000;
                long j13 = jSONObjectOptJSONObject2.getLong("currentBreakClipTime") * 1000;
                String strB = H3.a.b(jSONObjectOptJSONObject2, "breakId");
                String strB2 = H3.a.b(jSONObjectOptJSONObject2, "breakClipId");
                long jOptLong = jSONObjectOptJSONObject2.optLong("whenSkippable", -1L);
                if (jOptLong != -1) {
                    jOptLong *= 1000;
                }
                c0103c = new C0103c(j12, j13, strB, strB2, jOptLong);
            } catch (JSONException e8) {
                H3.b bVar = C0103c.f1490L;
                Log.e(bVar.f3679a, bVar.c("Error while creating an AdBreakClipInfo from JSON", new Object[0]), e8);
                c0103c = null;
            }
        } else {
            c0103c = null;
        }
        C0103c c0103c2 = this.f1588Y;
        if ((c0103c2 == null && c0103c != null) || (c0103c2 != null && !c0103c2.equals(c0103c))) {
            this.f1587X = (c0103c == null || (c0103c.f1493I == null && c0103c.f1494J == null)) ? false : true;
            this.f1588Y = c0103c;
            i25 |= 32;
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject2.optJSONObject("videoInfo");
        H3.b bVar2 = v.f1612J;
        if (jSONObjectOptJSONObject3 == null) {
            vVar = null;
        } else {
            try {
                String string3 = jSONObjectOptJSONObject3.getString("hdrType");
                string3.getClass();
                switch (string3) {
                    case "dv":
                        i10 = 3;
                        break;
                    case "hdr":
                        i10 = 4;
                        break;
                    case "sdr":
                        i10 = 1;
                        break;
                    case "hdr10":
                        i10 = 2;
                        break;
                    default:
                        bVar2.b("Unknown HDR type: %s", string3);
                        i10 = 0;
                        break;
                }
                vVar = new v(jSONObjectOptJSONObject3.getInt("width"), jSONObjectOptJSONObject3.getInt("height"), i10);
            } catch (JSONException e9) {
                bVar2.a(e9, "Error while creating a VideoInfo instance from JSON", new Object[0]);
                vVar = null;
            }
        }
        v vVar2 = this.f1589Z;
        if ((vVar2 == null && vVar != null) || (vVar2 != null && !vVar2.equals(vVar))) {
            this.f1589Z = vVar;
            i25 |= 64;
        }
        if (jSONObject2.has("breakInfo") && (mediaInfo = this.f1570G) != null) {
            mediaInfo.l(jSONObject2.getJSONObject("breakInfo"));
            i25 |= 2;
        }
        if (jSONObject2.has("queueData")) {
            JSONObject jSONObject6 = jSONObject2.getJSONObject("queueData");
            if (jSONObject6 == null) {
                jOptDouble = -1;
                mVar2 = null;
                iIntValue = 0;
                i12 = 0;
                iOptInt = 0;
                zOptBoolean = false;
                str3 = null;
                arrayList2 = null;
                str5 = null;
                str4 = null;
            } else {
                String strB3 = H3.a.b(jSONObject6, "id");
                String strB4 = H3.a.b(jSONObject6, "entity");
                String strOptString = jSONObject6.optString("queueType");
                strOptString.getClass();
                switch (strOptString) {
                    case "PODCAST_SERIES":
                        i11 = 5;
                        break;
                    case "RADIO_STATION":
                        i11 = 4;
                        break;
                    case "PLAYLIST":
                        i11 = 2;
                        break;
                    case "AUDIOBOOK":
                        i11 = 3;
                        break;
                    case "TV_SERIES":
                        i11 = 6;
                        break;
                    case "ALBUM":
                        i11 = 1;
                        break;
                    case "MOVIE":
                        i11 = 9;
                        break;
                    case "VIDEO_PLAYLIST":
                        i11 = 7;
                        break;
                    case "LIVE_TV":
                        i11 = 8;
                        break;
                    default:
                        i11 = 0;
                        break;
                }
                String strB5 = H3.a.b(jSONObject6, "name");
                JSONObject jSONObjectOptJSONObject4 = jSONObject6.has("containerMetadata") ? jSONObject6.optJSONObject("containerMetadata") : null;
                if (jSONObjectOptJSONObject4 != null) {
                    String strOptString2 = jSONObjectOptJSONObject4.optString("containerType", HttpUrl.FRAGMENT_ENCODE_SET);
                    strOptString2.getClass();
                    boolean zEquals = strOptString2.equals("AUDIOBOOK_CONTAINER");
                    String strB6 = H3.a.b(jSONObjectOptJSONObject4, "title");
                    JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject4.optJSONArray("sections");
                    if (jSONArrayOptJSONArray != null) {
                        arrayList3 = new ArrayList();
                        int i26 = 0;
                        while (i26 < jSONArrayOptJSONArray.length()) {
                            JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray.optJSONObject(i26);
                            String str6 = strB3;
                            if (jSONObjectOptJSONObject5 != null) {
                                l lVar = new l(0);
                                lVar.n(jSONObjectOptJSONObject5);
                                arrayList3.add(lVar);
                            }
                            i26++;
                            strB3 = str6;
                            strB4 = strB4;
                        }
                        str = strB3;
                        str2 = strB4;
                    } else {
                        str = strB3;
                        str2 = strB4;
                        arrayList3 = null;
                    }
                    JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject4.optJSONArray("containerImages");
                    if (jSONArrayOptJSONArray2 != null) {
                        arrayList4 = new ArrayList();
                        I3.a.c(arrayList4, jSONArrayOptJSONArray2);
                    } else {
                        arrayList4 = null;
                    }
                    double dOptDouble = jSONObjectOptJSONObject4.optDouble("containerDuration", 0.0d);
                    mVar = new m();
                    mVar.f1541G = zEquals ? 1 : 0;
                    mVar.f1542H = strB6;
                    mVar.f1543I = arrayList3;
                    mVar.f1544J = arrayList4;
                    mVar.f1545K = dOptDouble;
                } else {
                    str = strB3;
                    str2 = strB4;
                    mVar = null;
                }
                Integer numD2 = U4.a.d(jSONObject6.optString("repeatMode"));
                iIntValue = numD2 != null ? numD2.intValue() : 0;
                JSONArray jSONArrayOptJSONArray3 = jSONObject6.optJSONArray("items");
                if (jSONArrayOptJSONArray3 != null) {
                    arrayList = new ArrayList();
                    for (int i27 = 0; i27 < jSONArrayOptJSONArray3.length(); i27++) {
                        JSONObject jSONObjectOptJSONObject6 = jSONArrayOptJSONArray3.optJSONObject(i27);
                        if (jSONObjectOptJSONObject6 != null) {
                            try {
                                arrayList.add(new p(jSONObjectOptJSONObject6));
                            } catch (JSONException unused2) {
                            }
                        }
                    }
                } else {
                    arrayList = null;
                }
                iOptInt = jSONObject6.optInt("startIndex", 0);
                jOptDouble = jSONObject6.has("startTime") ? (long) (jSONObject6.optDouble("startTime", -1L) * 1000.0d) : -1L;
                str3 = str;
                str4 = strB5;
                str5 = str2;
                arrayList2 = arrayList;
                zOptBoolean = jSONObject6.optBoolean("shuffle");
                mVar2 = mVar;
                i12 = i11;
            }
            n nVar = new n();
            nVar.f1546G = str3;
            nVar.f1547H = str5;
            nVar.f1548I = i12;
            nVar.f1549J = str4;
            nVar.f1550K = mVar2;
            nVar.f1551L = iIntValue;
            nVar.f1552M = arrayList2;
            nVar.f1553N = iOptInt;
            nVar.f1554O = jOptDouble;
            nVar.f1555P = zOptBoolean;
            this.f1591b0 = nVar;
            if (this.f1592c0 != zOptBoolean) {
                this.f1592c0 = zOptBoolean;
                i25 |= 8;
            }
        }
        if (!jSONObject2.has("liveSeekableRange")) {
            if (this.f1590a0 != null) {
                i25 |= 2;
            }
            this.f1590a0 = null;
            return i25;
        }
        int i28 = 2 | i25;
        JSONObject jSONObjectOptJSONObject7 = jSONObject2.optJSONObject("liveSeekableRange");
        Parcelable.Creator<C0110j> creator2 = C0110j.CREATOR;
        if (jSONObjectOptJSONObject7 != null && jSONObjectOptJSONObject7.has("start") && jSONObjectOptJSONObject7.has("end")) {
            try {
                double d10 = jSONObjectOptJSONObject7.getDouble("start");
                Pattern pattern4 = H3.a.f3677a;
                c0110j = new C0110j((long) (d10 * 1000.0d), (long) (jSONObjectOptJSONObject7.getDouble("end") * 1000.0d), jSONObjectOptJSONObject7.optBoolean("isMovingWindow"), jSONObjectOptJSONObject7.optBoolean("isLiveDone"));
            } catch (JSONException unused3) {
                H3.b bVar3 = C0110j.f1517K;
                Log.e(bVar3.f3679a, bVar3.c("Ignoring Malformed MediaLiveSeekableRange: ".concat(jSONObjectOptJSONObject7.toString()), new Object[0]));
                c0110j = null;
            }
        } else {
            c0110j = null;
        }
        this.f1590a0 = c0110j;
        return i28;
    }

    public final void l(ArrayList arrayList) {
        ArrayList arrayList2 = this.f1586W;
        arrayList2.clear();
        SparseArray sparseArray = this.f1593d0;
        sparseArray.clear();
        if (arrayList != null) {
            for (int i8 = 0; i8 < arrayList.size(); i8++) {
                p pVar = (p) arrayList.get(i8);
                arrayList2.add(pVar);
                sparseArray.put(pVar.f1558H, Integer.valueOf(i8));
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        JSONObject jSONObject = this.f1584U;
        this.f1583T = jSONObject == null ? null : jSONObject.toString();
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.P(parcel, 2, this.f1570G, i8);
        long j8 = this.f1571H;
        AbstractC2987b.v0(parcel, 3, 8);
        parcel.writeLong(j8);
        int i9 = this.f1572I;
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(i9);
        double d6 = this.f1573J;
        AbstractC2987b.v0(parcel, 5, 8);
        parcel.writeDouble(d6);
        int i10 = this.f1574K;
        AbstractC2987b.v0(parcel, 6, 4);
        parcel.writeInt(i10);
        int i11 = this.f1575L;
        AbstractC2987b.v0(parcel, 7, 4);
        parcel.writeInt(i11);
        long j9 = this.f1576M;
        AbstractC2987b.v0(parcel, 8, 8);
        parcel.writeLong(j9);
        long j10 = this.f1577N;
        AbstractC2987b.v0(parcel, 9, 8);
        parcel.writeLong(j10);
        double d8 = this.f1578O;
        AbstractC2987b.v0(parcel, 10, 8);
        parcel.writeDouble(d8);
        boolean z7 = this.f1579P;
        AbstractC2987b.v0(parcel, 11, 4);
        parcel.writeInt(z7 ? 1 : 0);
        AbstractC2987b.O(parcel, 12, this.f1580Q);
        int i12 = this.f1581R;
        AbstractC2987b.v0(parcel, 13, 4);
        parcel.writeInt(i12);
        int i13 = this.f1582S;
        AbstractC2987b.v0(parcel, 14, 4);
        parcel.writeInt(i13);
        AbstractC2987b.Q(parcel, 15, this.f1583T);
        int i14 = this.f1585V;
        AbstractC2987b.v0(parcel, 16, 4);
        parcel.writeInt(i14);
        AbstractC2987b.U(parcel, 17, this.f1586W);
        boolean z8 = this.f1587X;
        AbstractC2987b.v0(parcel, 18, 4);
        parcel.writeInt(z8 ? 1 : 0);
        AbstractC2987b.P(parcel, 19, this.f1588Y, i8);
        AbstractC2987b.P(parcel, 20, this.f1589Z, i8);
        AbstractC2987b.P(parcel, 21, this.f1590a0, i8);
        AbstractC2987b.P(parcel, 22, this.f1591b0, i8);
        AbstractC2987b.p0(iX, parcel);
    }
}
