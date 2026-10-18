package C3;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class l extends M3.a {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final p004a3.b f1537K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f1538G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Bundle f1539H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f1540I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final String[] f1536J = {"none", "String", "int", "double", "ISO-8601 date String", "Time in milliseconds as long"};
    public static final Parcelable.Creator<l> CREATOR = new H(4);

    static {
        p004a3.b bVar = new p004a3.b(7);
        bVar.p(4, "com.google.android.gms.cast.metadata.CREATION_DATE", "creationDateTime");
        bVar.p(4, "com.google.android.gms.cast.metadata.RELEASE_DATE", "releaseDate");
        bVar.p(4, "com.google.android.gms.cast.metadata.BROADCAST_DATE", "originalAirdate");
        bVar.p(1, "com.google.android.gms.cast.metadata.TITLE", "title");
        bVar.p(1, "com.google.android.gms.cast.metadata.SUBTITLE", "subtitle");
        bVar.p(1, "com.google.android.gms.cast.metadata.ARTIST", "artist");
        bVar.p(1, "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "albumArtist");
        bVar.p(1, "com.google.android.gms.cast.metadata.ALBUM_TITLE", "albumName");
        bVar.p(1, "com.google.android.gms.cast.metadata.COMPOSER", "composer");
        bVar.p(2, "com.google.android.gms.cast.metadata.DISC_NUMBER", "discNumber");
        bVar.p(2, "com.google.android.gms.cast.metadata.TRACK_NUMBER", "trackNumber");
        bVar.p(2, "com.google.android.gms.cast.metadata.SEASON_NUMBER", "season");
        bVar.p(2, "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "episode");
        bVar.p(1, "com.google.android.gms.cast.metadata.SERIES_TITLE", "seriesTitle");
        bVar.p(1, "com.google.android.gms.cast.metadata.STUDIO", "studio");
        bVar.p(2, "com.google.android.gms.cast.metadata.WIDTH", "width");
        bVar.p(2, "com.google.android.gms.cast.metadata.HEIGHT", "height");
        bVar.p(1, "com.google.android.gms.cast.metadata.LOCATION_NAME", "location");
        bVar.p(3, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "latitude");
        bVar.p(3, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "longitude");
        bVar.p(5, "com.google.android.gms.cast.metadata.SECTION_DURATION", "sectionDuration");
        bVar.p(5, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA", "sectionStartTimeInMedia");
        bVar.p(5, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME", "sectionStartAbsoluteTime");
        bVar.p(5, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER", "sectionStartTimeInContainer");
        bVar.p(2, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID", "queueItemId");
        bVar.p(1, "com.google.android.gms.cast.metadata.BOOK_TITLE", "bookTitle");
        bVar.p(2, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER", "chapterNumber");
        bVar.p(1, "com.google.android.gms.cast.metadata.CHAPTER_TITLE", "chapterTitle");
        f1537K = bVar;
    }

    public l(ArrayList arrayList, Bundle bundle, int i8) {
        this.f1538G = arrayList;
        this.f1539H = bundle;
        this.f1540I = i8;
    }

    public static boolean o(Bundle bundle, Bundle bundle2) {
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if ((obj instanceof Bundle) && (obj2 instanceof Bundle) && !o((Bundle) obj, (Bundle) obj2)) {
                return false;
            }
            if (obj == null) {
                if (obj2 != null || !bundle2.containsKey(str)) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return o(this.f1539H, lVar.f1539H) && this.f1538G.equals(lVar.f1538G);
    }

    public final int hashCode() {
        int iHashCode = 17;
        Bundle bundle = this.f1539H;
        if (bundle != null) {
            Iterator<String> it = bundle.keySet().iterator();
            while (it.hasNext()) {
                Object obj = bundle.get(it.next());
                iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
            }
        }
        return this.f1538G.hashCode() + (iHashCode * 31);
    }

    public final String i(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("null and empty keys are not allowed");
        }
        Integer num = (Integer) ((Map) f1537K.f8652J).get(str);
        int iIntValue = num != null ? num.intValue() : 0;
        if (iIntValue == 1 || iIntValue == 0) {
            return this.f1539H.getString(str);
        }
        throw new IllegalArgumentException(U2.m("Value for ", str, " must be a ", f1536J[1]));
    }

    public final JSONObject l() {
        Bundle bundle;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("metadataType", this.f1540I);
        } catch (JSONException unused) {
        }
        JSONArray jSONArrayB = I3.a.b(this.f1538G);
        if (jSONArrayB.length() != 0) {
            try {
                jSONObject.put("images", jSONArrayB);
            } catch (JSONException unused2) {
            }
        }
        ArrayList arrayList = new ArrayList();
        int i8 = this.f1540I;
        if (i8 == 0) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i8 == 1) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.STUDIO", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i8 == 2) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.SERIES_TITLE", "com.google.android.gms.cast.metadata.SEASON_NUMBER", "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "com.google.android.gms.cast.metadata.BROADCAST_DATE");
        } else if (i8 == 3) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.ALBUM_TITLE", "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "com.google.android.gms.cast.metadata.COMPOSER", "com.google.android.gms.cast.metadata.TRACK_NUMBER", "com.google.android.gms.cast.metadata.DISC_NUMBER", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i8 == 4) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.LOCATION_NAME", "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "com.google.android.gms.cast.metadata.WIDTH", "com.google.android.gms.cast.metadata.HEIGHT", "com.google.android.gms.cast.metadata.CREATION_DATE");
        } else if (i8 == 5) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.CHAPTER_TITLE", "com.google.android.gms.cast.metadata.CHAPTER_NUMBER", "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.BOOK_TITLE", "com.google.android.gms.cast.metadata.SUBTITLE");
        }
        Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.SECTION_DURATION", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA", "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER", "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID");
        try {
            Iterator it = arrayList.iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                bundle = this.f1539H;
                if (!zHasNext) {
                    break;
                }
                String str = (String) it.next();
                if (str != null && bundle.containsKey(str)) {
                    p004a3.b bVar = f1537K;
                    String str2 = (String) ((Map) bVar.f8650H).get(str);
                    if (str2 != null) {
                        Integer num = (Integer) ((Map) bVar.f8652J).get(str);
                        int iIntValue = num != null ? num.intValue() : 0;
                        if (iIntValue != 1) {
                            if (iIntValue == 2) {
                                jSONObject.put(str2, bundle.getInt(str));
                            } else if (iIntValue == 3) {
                                jSONObject.put(str2, bundle.getDouble(str));
                            } else if (iIntValue != 4) {
                                if (iIntValue == 5) {
                                    long j8 = bundle.getLong(str);
                                    Pattern pattern = H3.a.f3677a;
                                    jSONObject.put(str2, j8 / 1000.0d);
                                }
                            }
                        }
                        jSONObject.put(str2, bundle.getString(str));
                    }
                }
            }
            for (String str3 : bundle.keySet()) {
                if (!str3.startsWith("com.google.")) {
                    Object obj = bundle.get(str3);
                    if (obj instanceof String) {
                        jSONObject.put(str3, obj);
                    } else if (obj instanceof Integer) {
                        jSONObject.put(str3, obj);
                    } else if (obj instanceof Double) {
                        jSONObject.put(str3, obj);
                    }
                }
            }
        } catch (JSONException unused3) {
        }
        return jSONObject;
    }

    public final void n(JSONObject jSONObject) {
        HashSet hashSet;
        Bundle bundle = this.f1539H;
        bundle.clear();
        List list = this.f1538G;
        list.clear();
        this.f1540I = 0;
        try {
            this.f1540I = jSONObject.getInt("metadataType");
        } catch (JSONException unused) {
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("images");
        if (jSONArrayOptJSONArray != null) {
            I3.a.c(list, jSONArrayOptJSONArray);
        }
        ArrayList arrayList = new ArrayList();
        int i8 = this.f1540I;
        if (i8 == 0) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i8 == 1) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.STUDIO", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i8 == 2) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.SERIES_TITLE", "com.google.android.gms.cast.metadata.SEASON_NUMBER", "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "com.google.android.gms.cast.metadata.BROADCAST_DATE");
        } else if (i8 == 3) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ALBUM_TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "com.google.android.gms.cast.metadata.COMPOSER", "com.google.android.gms.cast.metadata.TRACK_NUMBER", "com.google.android.gms.cast.metadata.DISC_NUMBER", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i8 == 4) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.LOCATION_NAME", "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "com.google.android.gms.cast.metadata.WIDTH", "com.google.android.gms.cast.metadata.HEIGHT", "com.google.android.gms.cast.metadata.CREATION_DATE");
        } else if (i8 == 5) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.CHAPTER_TITLE", "com.google.android.gms.cast.metadata.CHAPTER_NUMBER", "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.BOOK_TITLE", "com.google.android.gms.cast.metadata.SUBTITLE");
        }
        Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.SECTION_DURATION", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA", "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER", "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID");
        HashSet hashSet2 = new HashSet(arrayList);
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next != null && !"metadataType".equals(next)) {
                    p004a3.b bVar = f1537K;
                    String str = (String) ((Map) bVar.f8651I).get(next);
                    if (str == null) {
                        hashSet = hashSet2;
                        Object obj = jSONObject.get(next);
                        if (obj instanceof String) {
                            bundle.putString(next, (String) obj);
                        } else if (obj instanceof Integer) {
                            bundle.putInt(next, ((Integer) obj).intValue());
                        } else if (obj instanceof Double) {
                            bundle.putDouble(next, ((Double) obj).doubleValue());
                        }
                    } else if (hashSet2.contains(str)) {
                        try {
                            Object obj2 = jSONObject.get(next);
                            if (obj2 != null) {
                                Integer num = (Integer) ((Map) bVar.f8652J).get(str);
                                int iIntValue = num != null ? num.intValue() : 0;
                                if (iIntValue == 1) {
                                    hashSet = hashSet2;
                                    if (obj2 instanceof String) {
                                        bundle.putString(str, (String) obj2);
                                    }
                                } else if (iIntValue == 2) {
                                    hashSet = hashSet2;
                                    if (obj2 instanceof Integer) {
                                        bundle.putInt(str, ((Integer) obj2).intValue());
                                    }
                                } else if (iIntValue == 3) {
                                    hashSet = hashSet2;
                                    double dOptDouble = jSONObject.optDouble(next);
                                    if (!Double.isNaN(dOptDouble)) {
                                        bundle.putDouble(str, dOptDouble);
                                    }
                                } else if (iIntValue == 4) {
                                    hashSet = hashSet2;
                                    if (obj2 instanceof String) {
                                        String str2 = (String) obj2;
                                        if (I3.a.a(str2) != null) {
                                            bundle.putString(str, str2);
                                        }
                                    }
                                } else if (iIntValue == 5) {
                                    long jOptLong = jSONObject.optLong(next);
                                    Pattern pattern = H3.a.f3677a;
                                    hashSet = hashSet2;
                                    try {
                                        bundle.putLong(str, jOptLong * 1000);
                                    } catch (JSONException unused2) {
                                    }
                                }
                            }
                        } catch (JSONException unused3) {
                            hashSet = hashSet2;
                        }
                    }
                    hashSet2 = hashSet;
                }
            }
        } catch (JSONException unused4) {
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.U(parcel, 2, this.f1538G);
        AbstractC2987b.J(parcel, 3, this.f1539H);
        int i9 = this.f1540I;
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(i9);
        AbstractC2987b.p0(iX, parcel);
    }

    public l(int i8) {
        this(new ArrayList(), new Bundle(), i8);
    }
}
