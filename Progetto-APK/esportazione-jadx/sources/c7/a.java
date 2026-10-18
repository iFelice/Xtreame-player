package c7;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import h7.i;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11477G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ArrayList f11478H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public ArrayList f11479I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, int i8) {
        super(context, "xciptv.db", (SQLiteDatabase.CursorFactory) null, 3);
        this.f11477G = i8;
        if (i8 != 1) {
            this.f11478H = new ArrayList();
            this.f11479I = new ArrayList();
        } else {
            super(context, "otr_seasons_episodes.db", (SQLiteDatabase.CursorFactory) null, 1);
            this.f11478H = new ArrayList();
            this.f11479I = new ArrayList();
        }
    }

    public final void E(String str, String str2) throws Throwable {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        StringBuilder sb = new StringBuilder("%");
        sb.append(str);
        sb.append("%");
        Cursor cursor = null;
        try {
            Cursor cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM user_history WHERE name = ?", new String[]{str});
            try {
                if (cursorRawQuery.getCount() > 0) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("name", str);
                    contentValues.put("server", str2);
                    writableDatabase.update("user_history", contentValues, "name = ?", new String[]{str});
                } else {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("name", str);
                    contentValues2.put("username", "not_setup");
                    contentValues2.put("password", "not_setup");
                    contentValues2.put("server", str2);
                    writableDatabase.insert("user_history", null, contentValues2);
                }
                writableDatabase.close();
                cursorRawQuery.close();
            } catch (Throwable th) {
                th = th;
                cursor = cursorRawQuery;
                writableDatabase.close();
                cursor.close();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void N(JSONArray jSONArray) throws Throwable {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("seasons", null, null);
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                SQLiteDatabase sQLiteDatabase = writableDatabase;
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i8);
                    contentValues.put("id", jSONObject.getString("id"));
                    contentValues.put("name", jSONObject.getString("name"));
                    contentValues.put("background_url", jSONObject.getString("background_url"));
                    contentValues.put("icon", jSONObject.getString("icon"));
                    contentValues.put("groups", jSONObject.getString("groups"));
                    contentValues.put("description", jSONObject.getString("description"));
                    contentValues.put("season", jSONObject.getString("season"));
                    contentValues.put("episodes", jSONObject.getString("episodes"));
                    contentValues.put("view_count", jSONObject.getString("view_count"));
                    contentValues.put("created_date", jSONObject.getString("created_date"));
                    contentValues.put("pid", jSONObject.getString("pid"));
                    writableDatabase = sQLiteDatabase;
                    writableDatabase.insert("seasons", null, contentValues);
                } catch (JSONException unused) {
                    writableDatabase = sQLiteDatabase;
                } catch (Throwable th) {
                    th = th;
                    writableDatabase = sQLiteDatabase;
                    writableDatabase.endTransaction();
                    throw th;
                }
            }
            writableDatabase.setTransactionSuccessful();
        } catch (JSONException unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
        writableDatabase.endTransaction();
    }

    public final void O(String str, String str2, String str3, String str4) throws Throwable {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        StringBuilder sb = new StringBuilder("%");
        sb.append(str);
        sb.append("%");
        Cursor cursor = null;
        try {
            Cursor cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM user_history WHERE name = ?", new String[]{str});
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("name", str);
                contentValues.put("username", str2);
                contentValues.put("password", str3);
                contentValues.put("server", str4);
                if (cursorRawQuery.getCount() > 0) {
                    writableDatabase.update("user_history", contentValues, "name = ?", new String[]{str});
                } else {
                    writableDatabase.insert("user_history", null, contentValues);
                }
                writableDatabase.close();
                cursorRawQuery.close();
            } catch (Throwable th) {
                th = th;
                cursor = cursorRawQuery;
                writableDatabase.close();
                cursor.close();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final String a0(String str) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            Cursor cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM user_history WHERE name = ?", new String[]{str});
            if (cursorRawQuery.getCount() > 0) {
                writableDatabase.close();
                cursorRawQuery.close();
                return "yes";
            }
            writableDatabase.close();
            cursorRawQuery.close();
            return "no";
        } catch (Throwable unused) {
            throw null;
        }
    }

    public final void b0() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            writableDatabase.delete("Favourites", null, null);
            writableDatabase.delete("User", null, null);
        } finally {
            writableDatabase.close();
        }
    }

    public final void c0(String str) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            writableDatabase.delete("user_history", "name = ?", new String[]{str});
        } finally {
            writableDatabase.close();
        }
    }

    public final ArrayList d0() {
        this.f11479I.clear();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM user_history", null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    i iVar = new i();
                    iVar.f25478a = cursorRawQuery.getString(0);
                    iVar.f25479b = cursorRawQuery.getString(1);
                    iVar.f25480c = cursorRawQuery.getString(2).replaceAll("\\r\\n|\\r|\\n", HttpUrl.FRAGMENT_ENCODE_SET);
                    iVar.f25481d = cursorRawQuery.getString(3).replaceAll("\\r\\n|\\r|\\n", HttpUrl.FRAGMENT_ENCODE_SET);
                    iVar.f25482e = cursorRawQuery.getString(4).replaceAll("\\r\\n|\\r|\\n", HttpUrl.FRAGMENT_ENCODE_SET);
                    this.f11479I.add(iVar);
                } while (cursorRawQuery.moveToNext());
            }
        } catch (Throwable unused) {
        }
        writableDatabase.close();
        cursorRawQuery.close();
        return this.f11479I;
    }

    public final ArrayList e0(JSONArray jSONArray) {
        Cursor cursorRawQuery = null;
        this.f11479I = null;
        this.f11479I = new ArrayList();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String str = HttpUrl.FRAGMENT_ENCODE_SET;
        for (int i8 = 0; i8 < jSONArray.length(); i8++) {
            if (i8 == 0) {
                try {
                    str = "\"" + jSONArray.getString(i8) + "\"";
                } catch (JSONException unused) {
                }
            } else {
                str = str + ", \"" + jSONArray.getString(i8) + "\"";
            }
        }
        try {
            cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM seasons WHERE id in (" + str + ")", null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    Log.d("XCIPTV_TAG", cursorRawQuery.getString(0));
                    f7.b bVar = new f7.b();
                    cursorRawQuery.getString(0);
                    cursorRawQuery.getString(1);
                    cursorRawQuery.getString(2);
                    cursorRawQuery.getString(3);
                    cursorRawQuery.getString(4);
                    cursorRawQuery.getString(5);
                    bVar.f25225a = cursorRawQuery.getString(6);
                    bVar.f25226b = cursorRawQuery.getString(7);
                    cursorRawQuery.getString(7);
                    cursorRawQuery.getString(8);
                    cursorRawQuery.getString(10);
                    this.f11479I.add(bVar);
                } while (cursorRawQuery.moveToNext());
            }
            cursorRawQuery.close();
            return this.f11479I;
        } catch (Throwable unused2) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return this.f11479I;
        }
    }

    public final i f0(String str) {
        Cursor cursorQuery;
        SQLiteDatabase readableDatabase = getReadableDatabase();
        try {
            cursorQuery = readableDatabase.query("user_history", null, "name=?", new String[]{str}, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    cursorQuery.moveToFirst();
                } catch (Throwable unused) {
                    cursorQuery.close();
                    readableDatabase.close();
                    return null;
                }
            }
            String string = cursorQuery.getString(0);
            String string2 = cursorQuery.getString(1);
            String string3 = cursorQuery.getString(2);
            String string4 = cursorQuery.getString(3);
            String string5 = cursorQuery.getString(4);
            i iVar = new i();
            iVar.f25478a = string;
            iVar.f25479b = string2;
            iVar.f25480c = string3;
            iVar.f25481d = string4;
            iVar.f25482e = string5;
            cursorQuery.close();
            readableDatabase.close();
            return iVar;
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
    }

    public final void g0(JSONArray jSONArray) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i8);
                contentValues.put("id", jSONObject.getString("id"));
                contentValues.put("username", jSONObject.getString("username"));
                contentValues.put("name", jSONObject.getString("name"));
                contentValues.put("username", jSONObject.getString("username"));
                contentValues.put("password", jSONObject.getString("password"));
                contentValues.put("server", jSONObject.getString("server"));
                writableDatabase.insert("user_history", null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
        } catch (JSONException unused) {
        } finally {
            writableDatabase.endTransaction();
            writableDatabase.close();
        }
    }

    public final void k(JSONArray jSONArray) throws Throwable {
        SQLiteDatabase sQLiteDatabase;
        String str = "locked";
        String str2 = "favorite";
        String str3 = "interrupt_time";
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String str4 = "vod";
        String str5 = "recent";
        writableDatabase.delete("episodes", null, null);
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            String str6 = "episodes";
            SQLiteDatabase sQLiteDatabase2 = writableDatabase;
            int i8 = 0;
            while (i8 < jSONArray.length()) {
                try {
                    String str7 = str;
                    JSONObject jSONObject = jSONArray.getJSONObject(i8);
                    contentValues.put("id", jSONObject.getString("id"));
                    contentValues.put("groups", jSONObject.getString("groups"));
                    contentValues.put("iarc", jSONObject.getString("iarc"));
                    contentValues.put("parts", jSONObject.getString("parts"));
                    contentValues.put("view_count", jSONObject.getString("view_count"));
                    contentValues.put("meta", jSONObject.getString("meta"));
                    contentValues.put("created_date", jSONObject.getString("created_date"));
                    contentValues.put("video", jSONObject.getString("video"));
                    contentValues.put("audio", jSONObject.getString("audio"));
                    contentValues.put("price", jSONObject.getString("price"));
                    contentValues.put("pid", jSONObject.getString("pid"));
                    contentValues.put(str2, jSONObject.getString(str2));
                    String str8 = str2;
                    contentValues.put(str7, jSONObject.getString(str7));
                    String str9 = str5;
                    contentValues.put(str9, jSONObject.getString(str9));
                    String str10 = str3;
                    contentValues.put(str10, jSONObject.getString(str10));
                    String str11 = str4;
                    contentValues.put(str11, jSONObject.getString(str11));
                    sQLiteDatabase = sQLiteDatabase2;
                    String str12 = str6;
                    try {
                        sQLiteDatabase.insert(str12, null, contentValues);
                        i8++;
                        str6 = str12;
                        sQLiteDatabase2 = sQLiteDatabase;
                        str = str7;
                        str2 = str8;
                        str5 = str9;
                        str3 = str10;
                        str4 = str11;
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

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        switch (this.f11477G) {
            case 0:
                sQLiteDatabase.execSQL("CREATE TABLE Favourites(num TEXT,name TEXT,stream_type TEXT,stream_id TEXT,stream_icon TEXT,epg_channel_id TEXT,added TEXT,category_id TEXT,custom_sid TEXT,tv_archive TEXT,direct_source TEXT,tv_archive_duration TEXT)");
                sQLiteDatabase.execSQL("CREATE TABLE User(id TEXT,username TEXT,password TEXT,server TEXT)");
                sQLiteDatabase.execSQL("CREATE TABLE user_history(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,username TEXT,password TEXT,server TEXT)");
                break;
            default:
                sQLiteDatabase.execSQL("CREATE TABLE seasons(id TEXT,name TEXT,background_url TEXT,icon TEXT,groups TEXT,description TEXT,season TEXT,episodes TEXT,view_count TEXT,created_date TEXT,pid TEXT)");
                sQLiteDatabase.execSQL("CREATE TABLE episodes(id TEXT,groups TEXT,iarc TEXT,parts TEXT,view_count TEXT,meta TEXT,created_date TEXT,video TEXT,audio TEXT,price TEXT,pid TEXT,favorite TEXT,locked TEXT,recent TEXT,interrupt_time TEXT,vod TEXT)");
                break;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i8, int i9) {
        switch (this.f11477G) {
            case 0:
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS Favourites");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS User");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS user_history");
                onCreate(sQLiteDatabase);
                break;
            default:
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS seasons");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS episodes");
                onCreate(sQLiteDatabase);
                break;
        }
    }
}
