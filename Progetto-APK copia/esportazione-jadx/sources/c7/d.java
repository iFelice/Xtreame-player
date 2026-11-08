package c7;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.google.protobuf.U2;
import h7.g;
import h7.h;
import h7.j;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p000a.r;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f11486G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f11487H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ArrayList f11488I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ArrayList f11489J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final ArrayList f11490K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final ArrayList f11491L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final ArrayList f11492M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final ArrayList f11493N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final ArrayList f11494O;

    public d(Context context) {
        super(context, "s_xciptv.db", (SQLiteDatabase.CursorFactory) null, 8);
        this.f11486G = new ArrayList();
        this.f11487H = new ArrayList();
        this.f11488I = new ArrayList();
        this.f11489J = new ArrayList();
        this.f11490K = new ArrayList();
        this.f11491L = new ArrayList();
        this.f11492M = new ArrayList();
        this.f11493N = new ArrayList();
        this.f11494O = new ArrayList();
    }

    public final int A0(String str) {
        try {
            Cursor cursorQuery = getWritableDatabase().query("resume", new String[]{"position"}, "stream_id=?", new String[]{HttpUrl.FRAGMENT_ENCODE_SET + str}, null, null, null);
            if (cursorQuery.getCount() <= 0) {
                if (!cursorQuery.isClosed()) {
                    cursorQuery.close();
                }
                return 0;
            }
            cursorQuery.moveToFirst();
            int i8 = Integer.parseInt(cursorQuery.getString(0));
            if (!cursorQuery.isClosed()) {
                cursorQuery.close();
            }
            return i8;
        } catch (Throwable unused) {
            throw null;
        }
    }

    public final boolean B0(String str) {
        try {
            Cursor cursorRawQuery = getWritableDatabase().rawQuery("SELECT * FROM resume WHERE player=?", new String[]{str});
            if (cursorRawQuery.getCount() <= 0) {
                if (!cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
                return false;
            }
            cursorRawQuery.moveToFirst();
            Integer.parseInt(cursorRawQuery.getString(0));
            if (cursorRawQuery.isClosed()) {
                return true;
            }
            cursorRawQuery.close();
            return true;
        } catch (Throwable unused) {
            throw null;
        }
    }

    public final void C0(String str) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            writableDatabase.delete("resume", "stream_id = ?", new String[]{str});
        } finally {
            writableDatabase.close();
        }
    }

    public final void D0(String str) {
        Log.d("XCIPTV_TAG", "-------------seriesName -" + str);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            writableDatabase.delete("resume", "player=?", new String[]{str});
        } finally {
            writableDatabase.close();
        }
    }

    public final void E(JSONArray jSONArray) throws Throwable {
        SQLiteDatabase sQLiteDatabase;
        String str;
        String str2 = "youtube_trailer";
        String str3 = "rating_5based";
        String str4 = "last_modified";
        String str5 = "plot";
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String str6 = "category_id";
        String str7 = "episode_run_time";
        writableDatabase.delete("series", null, null);
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            String str8 = "series";
            SQLiteDatabase sQLiteDatabase2 = writableDatabase;
            int i8 = 0;
            while (i8 < jSONArray.length()) {
                try {
                    String str9 = str2;
                    JSONObject jSONObject = jSONArray.getJSONObject(i8);
                    contentValues.put("num", jSONObject.getString("num"));
                    contentValues.put("name", jSONObject.getString("name"));
                    contentValues.put("series_id", jSONObject.getString("series_id"));
                    contentValues.put("cover", jSONObject.getString("cover"));
                    contentValues.put(str5, jSONObject.getString(str5));
                    String str10 = str5;
                    contentValues.put("casting", jSONObject.getString("cast"));
                    contentValues.put("director", jSONObject.getString("director"));
                    contentValues.put("genre", jSONObject.getString("genre"));
                    if (jSONObject.has("releaseDate")) {
                        contentValues.put("releaseDate", jSONObject.getString("releaseDate"));
                    } else {
                        contentValues.put("releaseDate", HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                    contentValues.put(str4, jSONObject.getString(str4));
                    if (jSONObject.has("rating")) {
                        contentValues.put("rating", jSONObject.getString("rating"));
                    } else {
                        contentValues.put("rating", HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                    contentValues.put(str3, jSONObject.getString(str3));
                    if (jSONObject.has("backdrop_path")) {
                        String string = jSONObject.getString("backdrop_path");
                        str = str3;
                        if (string.contains("[")) {
                            JSONArray jSONArray2 = new JSONArray(string);
                            if (jSONArray2.length() > 0) {
                                contentValues.put("backdrop_path", jSONArray2.getString(0));
                            } else {
                                contentValues.put("backdrop_path", HttpUrl.FRAGMENT_ENCODE_SET);
                            }
                        } else {
                            contentValues.put("backdrop_path", HttpUrl.FRAGMENT_ENCODE_SET);
                        }
                    } else {
                        str = str3;
                        contentValues.put("backdrop_path", HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                    contentValues.put(str9, jSONObject.getString(str9));
                    String str11 = str7;
                    contentValues.put(str11, jSONObject.getString(str11));
                    String str12 = str6;
                    contentValues.put(str12, jSONObject.getString(str12));
                    String str13 = str4;
                    String str14 = str8;
                    sQLiteDatabase = sQLiteDatabase2;
                    try {
                        sQLiteDatabase.insert(str14, null, contentValues);
                        i8++;
                        sQLiteDatabase2 = sQLiteDatabase;
                        str8 = str14;
                        str7 = str11;
                        str4 = str13;
                        str2 = str9;
                        str3 = str;
                        str6 = str12;
                        str5 = str10;
                    } catch (JSONException unused) {
                    } catch (Throwable th) {
                        th = th;
                        sQLiteDatabase.endTransaction();
                        throw th;
                    }
                } catch (JSONException unused2) {
                    sQLiteDatabase = sQLiteDatabase2;
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteDatabase = sQLiteDatabase2;
                }
            }
            sQLiteDatabase = sQLiteDatabase2;
            sQLiteDatabase.setTransactionSuccessful();
        } catch (JSONException unused3) {
            sQLiteDatabase = writableDatabase;
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabase = writableDatabase;
        }
        sQLiteDatabase.endTransaction();
    }

    public final ArrayList E0() {
        ArrayList arrayList = this.f11493N;
        arrayList.clear();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = getWritableDatabase().rawQuery("SELECT * FROM resume", null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    g gVar = new g();
                    cursorRawQuery.getString(0);
                    gVar.f25460a = cursorRawQuery.getString(1);
                    gVar.f25461b = cursorRawQuery.getString(2);
                    cursorRawQuery.getString(3);
                    arrayList.add(gVar);
                } while (cursorRawQuery.moveToNext());
            }
            cursorRawQuery.close();
            return arrayList;
        } catch (Throwable unused) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return arrayList;
        }
    }

    public final String F0() {
        Cursor cursorRawQuery = getWritableDatabase().rawQuery("SELECT * FROM fav_profiles WHERE isactive=? LIMIT 1", new String[]{"yes"});
        if (cursorRawQuery.getCount() > 0) {
            cursorRawQuery.moveToFirst();
            return cursorRawQuery.getString(0);
        }
        if (cursorRawQuery.isClosed()) {
            return "0";
        }
        cursorRawQuery.close();
        return "0";
    }

    public final String G0(String str) {
        try {
            Cursor cursorRawQuery = getWritableDatabase().rawQuery("SELECT category_name FROM tv_category WHERE category_id=?", new String[]{str});
            if (cursorRawQuery.getCount() <= 0) {
                Log.d("XCIPTV_TAG", "--------epg_channel_id NOT found------------");
                cursorRawQuery.close();
                return "0";
            }
            if (!cursorRawQuery.moveToFirst()) {
                return "0";
            }
            String string = cursorRawQuery.getString(0);
            cursorRawQuery.close();
            return string;
        } catch (Throwable unused) {
            throw null;
        }
    }

    public final String H0(String str) {
        Log.d("XCIPTV_TAG", "--------------------streamid " + str);
        try {
            Cursor cursorRawQuery = getWritableDatabase().rawQuery("SELECT epg_channel_id FROM liststreams WHERE stream_id=?", new String[]{str});
            if (cursorRawQuery.getCount() <= 0) {
                Log.d("XCIPTV_TAG", "--------epg_channel_id NOT found------------");
                cursorRawQuery.close();
                return "0";
            }
            if (!cursorRawQuery.moveToFirst()) {
                return "0";
            }
            String string = cursorRawQuery.getString(0);
            cursorRawQuery.close();
            return string;
        } catch (Throwable unused) {
            throw null;
        }
    }

    public final ArrayList I0() {
        ArrayList arrayList = this.f11494O;
        arrayList.clear();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = getWritableDatabase().rawQuery("SELECT * FROM fav_profiles", null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    h7.c cVar = new h7.c();
                    cVar.f25426a = cursorRawQuery.getString(0);
                    cVar.f25427b = cursorRawQuery.getString(1);
                    cVar.f25428c = cursorRawQuery.getString(2);
                    arrayList.add(cVar);
                } while (cursorRawQuery.moveToNext());
            }
            cursorRawQuery.close();
            return arrayList;
        } catch (Throwable unused) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return arrayList;
        }
    }

    public final int J0(String str) {
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = getReadableDatabase().rawQuery("SELECT  * FROM ".concat(str), null);
            int count = cursorRawQuery.getCount();
            if (!cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return count;
        } catch (Throwable unused) {
            if (cursorRawQuery == null || cursorRawQuery.isClosed()) {
                return 0;
            }
            cursorRawQuery.close();
            return 0;
        }
    }

    public final int K0(String str) {
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = getReadableDatabase().rawQuery("SELECT  * FROM ".concat(str), null);
            int count = cursorRawQuery.getCount();
            if (!cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return count;
        } catch (Throwable unused) {
            if (cursorRawQuery == null || cursorRawQuery.isClosed()) {
                return 0;
            }
            cursorRawQuery.close();
            return 0;
        }
    }

    public final void L0() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM fav_profiles", new String[0]);
        if (cursorRawQuery.getCount() > 0) {
            if (cursorRawQuery.isClosed()) {
                return;
            }
            cursorRawQuery.close();
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", "1");
        contentValues.put("name", "Default");
        contentValues.put("isactive", "yes");
        writableDatabase.insert("fav_profiles", null, contentValues);
        if (cursorRawQuery.isClosed()) {
            return;
        }
        cursorRawQuery.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:?, code lost:
    
        throw null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void M0(java.lang.String r5) {
        /*
            r4 = this;
            android.database.sqlite.SQLiteDatabase r0 = r4.getWritableDatabase()
            r1 = 0
            java.lang.String r2 = "DELETE FROM fav_profiles WHERE id=?"
            java.lang.String[] r3 = new java.lang.String[]{r5}     // Catch: java.lang.Throwable -> L35
            android.database.Cursor r2 = r0.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L35
            int r3 = r2.getCount()
            if (r3 <= 0) goto L19
            r2.close()
            goto L1c
        L19:
            r2.close()
        L1c:
            java.lang.String r2 = "DELETE FROM fav WHERE fav_profile_id=?"
            java.lang.String[] r5 = new java.lang.String[]{r5}     // Catch: java.lang.Throwable -> L34
            android.database.Cursor r5 = r0.rawQuery(r2, r5)     // Catch: java.lang.Throwable -> L34
            int r0 = r5.getCount()
            if (r0 <= 0) goto L30
            r5.close()
            goto L33
        L30:
            r5.close()
        L33:
            return
        L34:
            throw r1
        L35:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c7.d.M0(java.lang.String):void");
    }

    public final void N(JSONArray jSONArray) throws Throwable {
        SQLiteDatabase sQLiteDatabase;
        String str = "releaseDate";
        String str2 = "episode_run_time";
        String str3 = "rating";
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("series", null, null);
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            SQLiteDatabase sQLiteDatabase2 = writableDatabase;
            String str4 = "series";
            int i8 = 0;
            while (i8 < jSONArray.length()) {
                try {
                    String str5 = str;
                    JSONObject jSONObject = jSONArray.getJSONObject(i8);
                    contentValues.put("num", jSONObject.getString("num"));
                    contentValues.put("name", jSONObject.getString("name"));
                    contentValues.put("series_id", jSONObject.getString("series_id"));
                    contentValues.put("cover", jSONObject.getString("cover"));
                    contentValues.put("backdrop_path", jSONObject.getString("backdrop_path"));
                    contentValues.put("category_id", jSONObject.getString("category_id"));
                    contentValues.put("plot", jSONObject.getString("plot"));
                    contentValues.put("genre", jSONObject.getString("genre"));
                    contentValues.put("director", jSONObject.getString("director"));
                    contentValues.put("casting", jSONObject.getString("casting"));
                    contentValues.put(str3, jSONObject.getString(str3));
                    contentValues.put(str2, jSONObject.getString(str2));
                    contentValues.put(str5, jSONObject.getString(str5));
                    String str6 = str2;
                    String str7 = str4;
                    sQLiteDatabase = sQLiteDatabase2;
                    String str8 = str3;
                    try {
                        sQLiteDatabase.insert(str7, null, contentValues);
                        i8++;
                        sQLiteDatabase2 = sQLiteDatabase;
                        str2 = str6;
                        str3 = str8;
                        str4 = str7;
                        str = str5;
                    } catch (JSONException unused) {
                    } catch (Throwable th) {
                        th = th;
                        sQLiteDatabase.endTransaction();
                        throw th;
                    }
                } catch (JSONException unused2) {
                    sQLiteDatabase = sQLiteDatabase2;
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteDatabase = sQLiteDatabase2;
                }
            }
            sQLiteDatabase = sQLiteDatabase2;
            sQLiteDatabase.setTransactionSuccessful();
        } catch (JSONException unused3) {
            sQLiteDatabase = writableDatabase;
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabase = writableDatabase;
        }
        sQLiteDatabase.endTransaction();
    }

    public final void O(JSONArray jSONArray) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("series_category", null, null);
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i8);
                contentValues.put("category_id", jSONObject.getString("category_id"));
                contentValues.put("category_name", jSONObject.getString("category_name"));
                contentValues.put("parent_id", jSONObject.getString("parent_id"));
                writableDatabase.insert("series_category", null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
        } catch (JSONException unused) {
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public final void a0(JSONArray jSONArray) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("tv_category", null, null);
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i8);
                contentValues.put("category_id", jSONObject.getString("category_id"));
                contentValues.put("category_name", jSONObject.getString("category_name"));
                contentValues.put("parent_id", jSONObject.getString("parent_id"));
                writableDatabase.insert("tv_category", null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
        } catch (JSONException unused) {
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public final void b0(JSONArray jSONArray) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("vods", null, null);
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i8);
                contentValues.put("num", jSONObject.getString("num"));
                contentValues.put("name", jSONObject.getString("name"));
                contentValues.put("stream_type", jSONObject.getString("stream_type"));
                contentValues.put("stream_id", jSONObject.getString("stream_id"));
                contentValues.put("stream_icon", jSONObject.getString("stream_icon"));
                contentValues.put("rating", HttpUrl.FRAGMENT_ENCODE_SET);
                contentValues.put("rating_5based", HttpUrl.FRAGMENT_ENCODE_SET);
                contentValues.put("added", HttpUrl.FRAGMENT_ENCODE_SET);
                contentValues.put("category_id", jSONObject.getString("category_id"));
                contentValues.put("container_extension", jSONObject.getString("container_extension"));
                contentValues.put("custom_sid", jSONObject.getString("custom_sid"));
                contentValues.put("direct_source", jSONObject.getString("direct_source"));
                writableDatabase.insert("vods", null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
        } catch (JSONException unused) {
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public final void c0(JSONArray jSONArray) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("vod_category", null, null);
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i8);
                contentValues.put("category_id", jSONObject.getString("category_id"));
                contentValues.put("category_name", jSONObject.getString("category_name"));
                contentValues.put("parent_id", jSONObject.getString("parent_id"));
                writableDatabase.insert("vod_category", null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
        } catch (JSONException unused) {
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public final String d0(String str, String str2, String str3) {
        try {
            Cursor cursorRawQuery = getWritableDatabase().rawQuery("SELECT * FROM fav WHERE (stream_id=? AND fav_profile_id=?) AND (stream_type =? OR stream_type =?)", new String[]{str, F0(), str2, str2 + str3});
            if (cursorRawQuery.getCount() > 0) {
                cursorRawQuery.close();
                return "yes";
            }
            cursorRawQuery.close();
            return "no";
        } catch (Throwable unused) {
            throw null;
        }
    }

    public final void e0(String str, String str2, String str3) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("fav", "stream_id = ? AND stream_type =?", new String[]{str, str2});
        writableDatabase.delete("fav", "stream_id = ? AND stream_type =?", new String[]{str, U2.A(str2, str3)});
        writableDatabase.close();
    }

    public final void f0(String str, String str2) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String strF0 = F0();
        ContentValues contentValues = new ContentValues();
        contentValues.put("stream_id", str);
        contentValues.put("stream_type", str2);
        contentValues.put("fav_profile_id", strF0);
        writableDatabase.insert("fav", null, contentValues);
        writableDatabase.close();
    }

    public final void g0(String str) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", str);
        contentValues.put("isactive", "no");
        writableDatabase.insert("fav_profiles", null, contentValues);
        writableDatabase.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:?, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
    
        throw null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void h0(java.lang.String r9) {
        /*
            r8 = this;
            android.database.sqlite.SQLiteDatabase r0 = r8.getWritableDatabase()
            r1 = 0
            java.lang.String r2 = "UPDATE fav_profiles SET isactive=?"
            r3 = 1
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L53
            java.lang.String r5 = "no"
            r6 = 0
            r4[r6] = r5     // Catch: java.lang.Throwable -> L53
            android.database.Cursor r2 = r0.rawQuery(r2, r4)     // Catch: java.lang.Throwable -> L53
            int r4 = r2.getCount()
            if (r4 <= 0) goto L1d
            r2.close()
            goto L20
        L1d:
            r2.close()
        L20:
            java.lang.String r4 = "UPDATE fav_profiles SET isactive=? WHERE id=?"
            r5 = 2
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Throwable -> L52
            java.lang.String r7 = "yes"
            r5[r6] = r7     // Catch: java.lang.Throwable -> L52
            r5[r3] = r9     // Catch: java.lang.Throwable -> L52
            android.database.Cursor r9 = r0.rawQuery(r4, r5)     // Catch: java.lang.Throwable -> L52
            int r1 = r9.getCount()
            if (r1 <= 0) goto L39
            r9.close()
            goto L3c
        L39:
            r9.close()
        L3c:
            boolean r1 = r2.isClosed()
            if (r1 != 0) goto L45
            r2.close()
        L45:
            boolean r1 = r2.isClosed()
            if (r1 != 0) goto L4e
            r9.close()
        L4e:
            r0.close()
            return
        L52:
            throw r1
        L53:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c7.d.h0(java.lang.String):void");
    }

    public final ArrayList i0() {
        ArrayList arrayList = this.f11489J;
        arrayList.clear();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = getWritableDatabase().rawQuery("SELECT  c.category_id, c.category_name, c.parent_id FROM tv_category c LEFT JOIN  liststreams l ON c.category_id = l.category_id WHERE l.tv_archive = 1 GROUP BY c.category_name;", null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    h7.a aVar = new h7.a();
                    aVar.f25421a = cursorRawQuery.getString(0);
                    aVar.f25422b = cursorRawQuery.getString(1);
                    aVar.f25423c = cursorRawQuery.getString(2);
                    arrayList.add(aVar);
                } while (cursorRawQuery.moveToNext());
            }
            if (!cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return arrayList;
        } catch (Throwable unused) {
            if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return arrayList;
        }
    }

    public final ArrayList j0(String str) {
        ArrayList arrayList = this.f11490K;
        this.f11488I.clear();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursorRawQuery = null;
        try {
            if (str.equals("TV")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT category_id, count(*) as total_count from liststreams WHERE stream_type='live' GROUP BY category_id", null);
            } else if (str.equals("RADIO")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT category_id, count(*) as total_count from liststreams WHERE stream_type='radio_streams' GROUP BY category_id", null);
            } else if (str.equals("VOD")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT category_id, count(*) as total_count from vods GROUP BY category_id", null);
            } else if (str.equals("SERIES")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT category_id, count(*) as total_count from series GROUP BY category_id", null);
            }
            if (cursorRawQuery.moveToFirst()) {
                do {
                    h7.b bVar = new h7.b();
                    bVar.f25424a = cursorRawQuery.getString(0);
                    bVar.f25425b = cursorRawQuery.getString(1);
                    arrayList.add(bVar);
                } while (cursorRawQuery.moveToNext());
            }
            if (!cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return arrayList;
        } catch (Throwable unused) {
            if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return arrayList;
        }
    }

    public final void k(JSONArray jSONArray) throws Throwable {
        SQLiteDatabase sQLiteDatabase;
        String str = "category_id";
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("liststreams", null, null);
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            int i8 = 0;
            while (i8 < jSONArray.length()) {
                SQLiteDatabase sQLiteDatabase2 = writableDatabase;
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i8);
                    contentValues.put("num", jSONObject.getString("num"));
                    contentValues.put("name", jSONObject.getString("name"));
                    contentValues.put("stream_type", jSONObject.getString("stream_type"));
                    contentValues.put("stream_id", jSONObject.getString("stream_id"));
                    contentValues.put("stream_icon", jSONObject.getString("stream_icon"));
                    contentValues.put("epg_channel_id", jSONObject.getString("epg_channel_id"));
                    contentValues.put("added", jSONObject.getString("added"));
                    contentValues.put(str, jSONObject.getString(str));
                    String str2 = str;
                    contentValues.put("custom_sid", "0");
                    contentValues.put("tv_archive", jSONObject.getString("tv_archive"));
                    contentValues.put("direct_source", jSONObject.getString("direct_source"));
                    contentValues.put("tv_archive_duration", jSONObject.getString("tv_archive_duration"));
                    sQLiteDatabase = sQLiteDatabase2;
                    try {
                        sQLiteDatabase.insert("liststreams", null, contentValues);
                        i8++;
                        writableDatabase = sQLiteDatabase;
                        str = str2;
                    } catch (JSONException unused) {
                    } catch (Throwable th) {
                        th = th;
                        sQLiteDatabase.endTransaction();
                        throw th;
                    }
                } catch (JSONException unused2) {
                    sQLiteDatabase = sQLiteDatabase2;
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteDatabase = sQLiteDatabase2;
                    sQLiteDatabase.endTransaction();
                    throw th;
                }
            }
            sQLiteDatabase = writableDatabase;
            sQLiteDatabase.setTransactionSuccessful();
        } catch (JSONException unused3) {
            sQLiteDatabase = writableDatabase;
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabase = writableDatabase;
        }
        sQLiteDatabase.endTransaction();
    }

    public final int k0(String str, String str2) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursorRawQuery = null;
        try {
            if (str.equals("TV")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT category_id FROM liststreams WHERE stream_type='live' AND category_id=?", new String[]{str2});
            } else if (str.equals("RADIO")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT category_id FROM liststreams WHERE stream_type='radio_streams' AND category_id=?", new String[]{str2});
            } else if (str.equals("VOD")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT category_id FROM vods WHERE category_id=?", new String[]{str2});
            } else if (str.equals("SERIES")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT category_id FROM series WHERE category_id=?", new String[]{str2});
            }
            if (cursorRawQuery.getCount() > 0) {
                if (!cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
                return cursorRawQuery.getCount();
            }
            if (cursorRawQuery.isClosed()) {
                return 0;
            }
            cursorRawQuery.close();
            return 0;
        } catch (Throwable unused) {
            throw null;
        }
    }

    public final ArrayList l0(String str, String str2, String str3) {
        Cursor cursorRawQuery;
        String[] strArr = {r.g("%", str, "%")};
        ArrayList arrayList = this.f11486G;
        arrayList.clear();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursor = null;
        try {
            if (str2.equals("0")) {
                cursorRawQuery = str.toLowerCase().equals("all") ? writableDatabase.rawQuery("SELECT * FROM liststreams", null) : writableDatabase.rawQuery("SELECT * FROM liststreams WHERE name LIKE ?", strArr);
            } else if (str3.equals("ASC")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM liststreams WHERE category_id=? ORDER BY name COLLATE NOCASE ASC", new String[]{str2});
            } else {
                cursorRawQuery = str3.equals("DESC") ? writableDatabase.rawQuery("SELECT * FROM liststreams WHERE category_id=? ORDER BY name COLLATE NOCASE DESC", new String[]{str2}) : writableDatabase.rawQuery("SELECT * FROM liststreams WHERE category_id=?", new String[]{str2});
            }
            cursor = cursorRawQuery;
            if (cursor.moveToFirst()) {
                do {
                    h7.d dVar = new h7.d();
                    dVar.f25429a = cursor.getString(0);
                    dVar.f25430b = cursor.getString(1);
                    dVar.f25431c = cursor.getString(2);
                    dVar.f25432d = cursor.getString(3);
                    dVar.f25433e = cursor.getString(4);
                    dVar.f25434f = cursor.getString(5);
                    dVar.f25435g = cursor.getString(6);
                    dVar.f25436h = cursor.getString(7);
                    dVar.f25437i = cursor.getString(8);
                    dVar.f25438j = cursor.getString(9);
                    dVar.f25439k = cursor.getString(10);
                    dVar.f25440l = cursor.getString(11);
                    arrayList.add(dVar);
                } while (cursor.moveToNext());
            }
            cursor.close();
            return arrayList;
        } catch (Throwable unused) {
            if (cursor != null) {
                cursor.close();
            }
            return arrayList;
        }
    }

    public final ArrayList m0() {
        ArrayList arrayList = this.f11489J;
        arrayList.clear();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = getWritableDatabase().rawQuery("SELECT c.category_id, c.category_name, c.parent_id FROM tv_category c LEFT JOIN  liststreams l ON c.category_id = l.category_id WHERE l.stream_type = 'radio_streams' GROUP BY c.category_name;", null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    h7.a aVar = new h7.a();
                    aVar.f25421a = cursorRawQuery.getString(0);
                    aVar.f25422b = cursorRawQuery.getString(1);
                    aVar.f25423c = cursorRawQuery.getString(2);
                    arrayList.add(aVar);
                } while (cursorRawQuery.moveToNext());
            }
            if (!cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return arrayList;
        } catch (Throwable unused) {
            if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return arrayList;
        }
    }

    public final ArrayList n0() {
        ArrayList arrayList = this.f11489J;
        arrayList.clear();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = getWritableDatabase().rawQuery("SELECT * FROM series_category", null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    h7.a aVar = new h7.a();
                    aVar.f25421a = cursorRawQuery.getString(0);
                    aVar.f25422b = cursorRawQuery.getString(1);
                    aVar.f25423c = cursorRawQuery.getString(2);
                    arrayList.add(aVar);
                } while (cursorRawQuery.moveToNext());
            }
            if (!cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return arrayList;
        } catch (Throwable unused) {
            if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return arrayList;
        }
    }

    public final ArrayList o0(String str, String str2) {
        Cursor cursorRawQuery;
        ArrayList arrayList = this.f11488I;
        arrayList.clear();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String strF0 = F0();
        Cursor cursor = null;
        try {
            if (str.equals("ASC")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM fav f JOIN series s ON s.series_id = f.stream_id WHERE (s.series_id = f.stream_id AND f.fav_profile_id=?) AND (f.stream_type =? OR f.stream_type =?) ORDER BY name COLLATE NOCASE ASC", new String[]{strF0, str2, str2 + "_series"});
            } else if (str.equals("DESC")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM fav f JOIN series s ON s.series_id = f.stream_id WHERE (s.series_id = f.stream_id AND f.fav_profile_id=?) AND (f.stream_type =? OR f.stream_type =?) ORDER BY name COLLATE NOCASE DESC", new String[]{strF0, str2, str2 + "_series"});
            } else {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM fav f JOIN series s ON s.series_id = f.stream_id WHERE (s.series_id = f.stream_id AND f.fav_profile_id=?) AND (f.stream_type =? OR f.stream_type =?)", new String[]{strF0, str2, str2 + "_series"});
            }
            cursor = cursorRawQuery;
            if (cursor.moveToFirst()) {
                do {
                    h hVar = new h();
                    hVar.f25462a = cursor.getString(4);
                    hVar.f25463b = cursor.getString(5);
                    hVar.f25464c = cursor.getString(6);
                    hVar.f25465d = cursor.getString(7);
                    hVar.f25466e = cursor.getString(8);
                    hVar.f25467f = cursor.getString(9);
                    hVar.f25468g = cursor.getString(10);
                    hVar.f25469h = cursor.getString(11);
                    hVar.f25470i = cursor.getString(12);
                    hVar.f25471j = cursor.getString(13);
                    hVar.f25472k = cursor.getString(14);
                    hVar.f25473l = cursor.getString(15);
                    hVar.f25474m = cursor.getString(16);
                    hVar.f25475n = cursor.getString(17);
                    hVar.f25476o = cursor.getString(18);
                    hVar.f25477p = cursor.getString(19);
                    arrayList.add(hVar);
                } while (cursor.moveToNext());
            }
            if (!cursor.isClosed()) {
                cursor.close();
            }
            return arrayList;
        } catch (Throwable unused) {
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            return arrayList;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE liststreams(num TEXT,name TEXT,stream_type TEXT,stream_id TEXT,stream_icon TEXT,epg_channel_id TEXT,added TEXT,category_id TEXT,custom_sid TEXT,tv_archive TEXT,direct_source TEXT,tv_archive_duration TEXT)");
        sQLiteDatabase.execSQL("CREATE TABLE vods(num TEXT,name TEXT,stream_type TEXT,stream_id TEXT,stream_icon TEXT,rating TEXT,rating_5based TEXT,added TEXT,category_id TEXT,container_extension TEXT,custom_sid TEXT,direct_source TEXT)");
        sQLiteDatabase.execSQL("CREATE TABLE series(num TEXT,name TEXT,series_id TEXT,cover TEXT,plot TEXT,casting TEXT,director TEXT,genre TEXT,releaseDate TEXT,last_modified TEXT,rating TEXT,rating_5based TEXT,backdrop_path TEXT,youtube_trailer TEXT,episode_run_time TEXT,category_id TEXT)");
        sQLiteDatabase.execSQL("CREATE TABLE vod_category(category_id TEXT,category_name TEXT,parent_id TEXT)");
        sQLiteDatabase.execSQL("CREATE TABLE tv_category(category_id TEXT,category_name TEXT,parent_id TEXT)");
        sQLiteDatabase.execSQL("CREATE TABLE series_category(category_id TEXT,category_name TEXT,parent_id TEXT)");
        sQLiteDatabase.execSQL("CREATE TABLE resume(resumeid INTEGER PRIMARY KEY AUTOINCREMENT,stream_id TEXT,player TEXT,position TEXT)");
        sQLiteDatabase.execSQL("CREATE TABLE epg_channel(id TEXT,display_name TEXT,epg_ch_icon TEXT)");
        sQLiteDatabase.execSQL("CREATE TABLE epg_programme(id INTEGER PRIMARY KEY AUTOINCREMENT,stop TEXT,start TEXT,channel TEXT,epg_title TEXT,epg_desc TEXT)");
        sQLiteDatabase.execSQL("CREATE TABLE fav(id INTEGER PRIMARY KEY AUTOINCREMENT,stream_id TEXT,fav_profile_id TEXT,stream_type TEXT)");
        sQLiteDatabase.execSQL("CREATE TABLE fav_profiles(id INTEGER PRIMARY KEY AUTOINCREMENT,isactive TEXT,name TEXT)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i8, int i9) {
        if (i8 < 6) {
            sQLiteDatabase.execSQL("ALTER TABLE fav ADD COLUMN fav_profile_id TEXT");
            sQLiteDatabase.execSQL("CREATE TABLE fav_profiles(id INTEGER PRIMARY KEY AUTOINCREMENT,isactive TEXT,name TEXT)");
        }
        if (i8 == 7) {
            Cursor cursorRawQuery = null;
            try {
                cursorRawQuery = sQLiteDatabase.rawQuery("Select * from fav_profiles limit 1", null);
                boolean z7 = cursorRawQuery.getColumnIndex("isactive") != -1;
                try {
                    cursorRawQuery.close();
                } catch (Exception unused) {
                }
                if (z7) {
                    return;
                }
            } catch (Exception unused2) {
                if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (Exception unused3) {
                    }
                }
            } catch (Throwable th) {
                if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (Exception unused4) {
                    }
                }
                throw th;
            }
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS fav_profiles");
            sQLiteDatabase.execSQL("ALTER TABLE fav ADD COLUMN fav_profile_id TEXT");
            sQLiteDatabase.execSQL("CREATE TABLE fav_profiles(id INTEGER PRIMARY KEY AUTOINCREMENT,isactive TEXT,name TEXT)");
        }
    }

    public final ArrayList p0(String str, String str2, String str3) {
        Cursor cursorRawQuery;
        String[] strArr = {r.g("%", str, "%")};
        ArrayList arrayList = this.f11488I;
        arrayList.clear();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursor = null;
        try {
            if (str2.equals("0")) {
                cursorRawQuery = str.toLowerCase().equals("all") ? writableDatabase.rawQuery("SELECT * FROM series ORDER BY CAST(series_id AS NUMBER) DESC", null) : writableDatabase.rawQuery("SELECT * FROM series WHERE name LIKE ?", strArr);
            } else if (str3.equals("ASC")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM series WHERE category_id=? ORDER BY name COLLATE NOCASE ASC", new String[]{str2});
            } else if (str3.equals("DESC")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM series WHERE category_id=? ORDER BY name COLLATE NOCASE DESC", new String[]{str2});
            } else {
                cursorRawQuery = str3.equals("NEW") ? writableDatabase.rawQuery("SELECT * FROM series WHERE category_id=? ORDER BY CAST(series_id AS NUMBER) DESC", new String[]{str2}) : writableDatabase.rawQuery("SELECT * FROM series WHERE category_id=? ORDER BY CAST(series_id AS NUMBER) DESC", new String[]{str2});
            }
            cursor = cursorRawQuery;
            if (cursor.moveToFirst()) {
                do {
                    h hVar = new h();
                    hVar.f25462a = cursor.getString(0);
                    hVar.f25463b = cursor.getString(1);
                    hVar.f25464c = cursor.getString(2);
                    hVar.f25465d = cursor.getString(3);
                    hVar.f25466e = cursor.getString(4);
                    hVar.f25467f = cursor.getString(5);
                    hVar.f25468g = cursor.getString(6);
                    hVar.f25469h = cursor.getString(7);
                    hVar.f25470i = cursor.getString(8);
                    hVar.f25471j = cursor.getString(9);
                    hVar.f25472k = cursor.getString(10);
                    hVar.f25473l = cursor.getString(11);
                    hVar.f25474m = cursor.getString(12);
                    hVar.f25475n = cursor.getString(13);
                    hVar.f25476o = cursor.getString(14);
                    hVar.f25477p = cursor.getString(15);
                    arrayList.add(hVar);
                } while (cursor.moveToNext());
            }
            if (!cursor.isClosed()) {
                cursor.close();
            }
            return arrayList;
        } catch (Throwable unused) {
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            return arrayList;
        }
    }

    public final ArrayList q0() {
        ArrayList arrayList = this.f11489J;
        arrayList.clear();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = getWritableDatabase().rawQuery("SELECT * FROM tv_category", null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    h7.a aVar = new h7.a();
                    aVar.f25421a = cursorRawQuery.getString(0);
                    aVar.f25422b = cursorRawQuery.getString(1);
                    aVar.f25423c = cursorRawQuery.getString(2);
                    arrayList.add(aVar);
                } while (cursorRawQuery.moveToNext());
            }
            if (!cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return arrayList;
        } catch (Throwable unused) {
            if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return arrayList;
        }
    }

    public final ArrayList r0(String str, String str2) {
        Cursor cursorRawQuery;
        ArrayList arrayList = this.f11486G;
        arrayList.clear();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String strF0 = F0();
        Cursor cursor = null;
        try {
            if (str.equals("ASC")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM fav f JOIN liststreams v ON v.stream_id = f.stream_id WHERE (v.stream_id = f.stream_id AND f.fav_profile_id=?) AND (f.stream_type =? OR f.stream_type =?) ORDER BY name COLLATE NOCASE ASC", new String[]{strF0, str2, str2 + "_live"});
            } else if (str.equals("DESC")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM fav f JOIN liststreams v ON v.stream_id = f.stream_id WHERE (v.stream_id = f.stream_id AND f.fav_profile_id=?) AND (f.stream_type =? OR f.stream_type =?) ORDER BY name COLLATE NOCASE DESC", new String[]{strF0, str2, str2 + "_live"});
            } else {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM fav f  JOIN liststreams v ON v.stream_id = f.stream_id  WHERE (v.stream_id = f.stream_id AND f.fav_profile_id=?) AND (f.stream_type =? OR f.stream_type =?)", new String[]{strF0, str2, str2 + "_live"});
            }
            cursor = cursorRawQuery;
            if (cursor.moveToFirst()) {
                do {
                    h7.d dVar = new h7.d();
                    dVar.f25429a = cursor.getString(4);
                    dVar.f25430b = cursor.getString(5);
                    dVar.f25431c = cursor.getString(6);
                    dVar.f25432d = cursor.getString(7);
                    dVar.f25433e = cursor.getString(8);
                    dVar.f25434f = cursor.getString(9);
                    dVar.f25435g = cursor.getString(10);
                    dVar.f25436h = cursor.getString(11);
                    dVar.f25437i = cursor.getString(12);
                    dVar.f25438j = cursor.getString(13);
                    dVar.f25439k = cursor.getString(14);
                    dVar.f25440l = cursor.getString(15);
                    arrayList.add(dVar);
                } while (cursor.moveToNext());
            }
            cursor.close();
            return arrayList;
        } catch (Throwable unused) {
            if (cursor != null) {
                cursor.close();
            }
            return arrayList;
        }
    }

    public final ArrayList s0() {
        ArrayList arrayList = this.f11489J;
        arrayList.clear();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = getWritableDatabase().rawQuery("SELECT * FROM vod_category", null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    h7.a aVar = new h7.a();
                    aVar.f25421a = cursorRawQuery.getString(0);
                    aVar.f25422b = cursorRawQuery.getString(1);
                    aVar.f25423c = cursorRawQuery.getString(2);
                    arrayList.add(aVar);
                } while (cursorRawQuery.moveToNext());
            }
            if (!cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return arrayList;
        } catch (Throwable unused) {
            if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return arrayList;
        }
    }

    public final ArrayList t0(String str, String str2) {
        Cursor cursorRawQuery;
        ArrayList arrayList = this.f11487H;
        arrayList.clear();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String strF0 = F0();
        Cursor cursor = null;
        try {
            if (str.equals("ASC")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM fav f JOIN vods v ON v.stream_id = f.stream_id WHERE (v.stream_id = f.stream_id AND f.fav_profile_id=?) AND (f.stream_type =? OR f.stream_type =?) ORDER BY name COLLATE NOCASE ASC", new String[]{strF0, str2, str2 + "_vod"});
            } else if (str.equals("DESC")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM fav f JOIN vods v ON v.stream_id = f.stream_id WHERE (v.stream_id = f.stream_id AND f.fav_profile_id=?) AND (f.stream_type =? OR f.stream_type =?) ORDER BY name COLLATE NOCASE DESC", new String[]{strF0, str2, str2 + "_vod"});
            } else {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM fav f JOIN vods v ON v.stream_id = f.stream_id WHERE (v.stream_id = f.stream_id AND f.fav_profile_id=?) AND (f.stream_type =? OR f.stream_type =?)", new String[]{strF0, str2, str2 + "_vod"});
            }
            cursor = cursorRawQuery;
            if (cursor.moveToFirst()) {
                do {
                    j jVar = new j();
                    jVar.f25483a = cursor.getString(4);
                    jVar.f25484b = cursor.getString(5);
                    jVar.f25485c = cursor.getString(6);
                    jVar.f25486d = cursor.getString(7);
                    jVar.f25487e = cursor.getString(8);
                    jVar.f25488f = cursor.getString(9);
                    jVar.f25489g = cursor.getString(10);
                    jVar.f25490h = cursor.getString(11);
                    jVar.f25491i = cursor.getString(12);
                    jVar.f25492j = cursor.getString(13);
                    jVar.f25493k = cursor.getString(14);
                    jVar.f25494l = cursor.getString(15);
                    arrayList.add(jVar);
                } while (cursor.moveToNext());
            }
            if (!cursor.isClosed()) {
                cursor.close();
            }
            return arrayList;
        } catch (Throwable unused) {
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            return arrayList;
        }
    }

    public final ArrayList u0(String str, String str2, String str3) {
        Cursor cursorRawQuery;
        String[] strArr = {r.g("%", str, "%")};
        ArrayList arrayList = this.f11487H;
        arrayList.clear();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursor = null;
        try {
            if (str2.equals("0")) {
                cursorRawQuery = str.toLowerCase().equals("all") ? writableDatabase.rawQuery("SELECT * FROM vods ORDER BY CAST(stream_id AS NUMBER) DESC", null) : writableDatabase.rawQuery("SELECT * FROM vods WHERE name LIKE ?", strArr);
            } else if (str3.equals("ASC")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM vods WHERE category_id=? ORDER BY name COLLATE NOCASE ASC", new String[]{str2});
            } else if (str3.equals("DESC")) {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM vods WHERE category_id=? ORDER BY name COLLATE NOCASE DESC", new String[]{str2});
            } else {
                cursorRawQuery = (!str3.equals("NEW") && str3.equals("OLD")) ? writableDatabase.rawQuery("SELECT * FROM vods WHERE category_id=? ORDER BY CAST(stream_id AS NUMBER) ASC", new String[]{str2}) : writableDatabase.rawQuery("SELECT * FROM vods WHERE category_id=? ORDER BY CAST(stream_id AS NUMBER) DESC", new String[]{str2});
            }
            cursor = cursorRawQuery;
            if (cursor.moveToFirst()) {
                do {
                    j jVar = new j();
                    jVar.f25483a = cursor.getString(0);
                    jVar.f25484b = cursor.getString(1);
                    jVar.f25485c = cursor.getString(2);
                    jVar.f25486d = cursor.getString(3);
                    jVar.f25487e = cursor.getString(4);
                    jVar.f25488f = cursor.getString(5);
                    jVar.f25489g = cursor.getString(6);
                    jVar.f25490h = cursor.getString(7);
                    jVar.f25491i = cursor.getString(8);
                    jVar.f25492j = cursor.getString(9);
                    jVar.f25493k = cursor.getString(10);
                    jVar.f25494l = cursor.getString(11);
                    arrayList.add(jVar);
                } while (cursor.moveToNext());
            }
            if (!cursor.isClosed()) {
                cursor.close();
            }
            return arrayList;
        } catch (Throwable unused) {
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            return arrayList;
        }
    }

    public final String v0(String str, String str2) {
        try {
            Cursor cursorRawQuery = getWritableDatabase().rawQuery("SELECT * FROM fav WHERE stream_type=? OR stream_type=?", new String[]{str, str2});
            if (cursorRawQuery.getCount() > 0) {
                if (cursorRawQuery.isClosed()) {
                    return "yes";
                }
                cursorRawQuery.close();
                return "yes";
            }
            if (cursorRawQuery.isClosed()) {
                return "no";
            }
            cursorRawQuery.close();
            return "no";
        } catch (Throwable unused) {
            throw null;
        }
    }

    public final void w0(JSONArray jSONArray) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i8);
                contentValues.put("id", jSONObject.getString("id"));
                contentValues.put("stream_id", jSONObject.getString("stream_id"));
                if (jSONObject.has("fav_profile_id")) {
                    contentValues.put("fav_profile_id", jSONObject.getString("fav_profile_id"));
                } else {
                    contentValues.put("fav_profile_id", "1");
                }
                contentValues.put("stream_type", jSONObject.getString("stream_type"));
                writableDatabase.insert("fav", null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
        } catch (JSONException unused) {
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public final void x0(JSONArray jSONArray) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i8);
                contentValues.put("id", jSONObject.getString("id"));
                contentValues.put("isactive", jSONObject.getString("isactive"));
                contentValues.put("name", jSONObject.getString("name"));
                writableDatabase.insert("fav_profiles", null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
        } catch (JSONException unused) {
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public final void y0(JSONArray jSONArray) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i8);
                contentValues.put("resumeid", jSONObject.getString("resumeid"));
                contentValues.put("stream_id", jSONObject.getString("stream_id"));
                contentValues.put("player", jSONObject.getString("player"));
                contentValues.put("position", jSONObject.getString("position"));
                writableDatabase.insert("resume", null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
        } catch (JSONException unused) {
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public final void z0(String str, String str2, String str3) throws Throwable {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursor = null;
        try {
            Cursor cursorQuery = writableDatabase.query("resume", new String[]{"position"}, "stream_id= ? AND player = ?", new String[]{HttpUrl.FRAGMENT_ENCODE_SET + str2, HttpUrl.FRAGMENT_ENCODE_SET + str}, null, null, null);
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("stream_id", str2);
                contentValues.put("player", str);
                contentValues.put("position", str3);
                writableDatabase.insert("resume", null, contentValues);
                if (cursorQuery == null || cursorQuery.isClosed()) {
                    return;
                }
                cursorQuery.close();
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
