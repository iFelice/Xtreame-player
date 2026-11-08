package c7;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11480G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f11481H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ArrayList f11482I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ArrayList f11483J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context, int i8) {
        super(context, "misc.db", (SQLiteDatabase.CursorFactory) null, 4);
        this.f11480G = i8;
        if (i8 != 1) {
            this.f11481H = new ArrayList();
            this.f11482I = new ArrayList();
            this.f11483J = new ArrayList();
            return;
        }
        super(context, "parental.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f11481H = new ArrayList();
        this.f11482I = new ArrayList();
        this.f11483J = new ArrayList();
    }

    public final void E(String str) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (d0(str).equals("no")) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("episode_stream_id", str);
            contentValues.put("watched", "yes");
            writableDatabase.insert("episode", null, contentValues);
        }
    }

    public final String N(String str, String str2, String str3) {
        Cursor cursorRawQuery;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (str2.equals("TV")) {
            cursorRawQuery = writableDatabase.rawQuery("SELECT category_id FROM parental_control_tv WHERE category_id=? AND parent_id=?", new String[]{str, str3});
        } else if (str2.equals("VOD")) {
            cursorRawQuery = writableDatabase.rawQuery("SELECT category_id FROM parental_control_vod WHERE category_id=? AND parent_id=?", new String[]{str, str3});
        } else {
            cursorRawQuery = str2.equals("SERIES") ? writableDatabase.rawQuery("SELECT category_id FROM parental_control_series WHERE category_id=? AND parent_id=?", new String[]{str, str3}) : null;
        }
        if (cursorRawQuery.getCount() > 0) {
            cursorRawQuery.close();
            return "yes";
        }
        cursorRawQuery.close();
        return "no";
    }

    public final void O(String str, String str2) {
        Cursor cursorRawQuery;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (str2.equals("TV")) {
            cursorRawQuery = writableDatabase.rawQuery("DELETE FROM parental_control_tv WHERE category_id=?", new String[]{str});
        } else if (str2.equals("VOD")) {
            cursorRawQuery = writableDatabase.rawQuery("DELETE FROM parental_control_vod WHERE category_id=?", new String[]{str});
        } else {
            cursorRawQuery = str2.equals("SERIES") ? writableDatabase.rawQuery("DELETE FROM parental_control_series WHERE category_id=?", new String[]{str}) : null;
        }
        cursorRawQuery.getCount();
        cursorRawQuery.close();
    }

    public final void a0(JSONArray jSONArray, String str) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i8);
                contentValues.put("id", jSONObject.getString("id"));
                contentValues.put("category_id", jSONObject.getString("category_id"));
                contentValues.put("parent_id", jSONObject.getString("parent_id"));
                if (str.equals("TV")) {
                    writableDatabase.insert("parental_control_tv", null, contentValues);
                } else if (str.equals("VOD")) {
                    writableDatabase.insert("parental_control_vod", null, contentValues);
                } else if (str.equals("SERIES")) {
                    writableDatabase.insert("parental_control_series", null, contentValues);
                }
            }
            writableDatabase.setTransactionSuccessful();
        } catch (JSONException unused) {
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public final void b0(JSONArray jSONArray) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i8);
                contentValues.put("id", jSONObject.getString("id"));
                contentValues.put("episode_stream_id", jSONObject.getString("episode_stream_id"));
                contentValues.put("watched", jSONObject.getString("watched"));
                writableDatabase.insert("episode", null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
        } catch (JSONException unused) {
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public final String c0(String str, String str2) {
        try {
            Cursor cursorRawQuery = getWritableDatabase().rawQuery("SELECT category, type FROM category_filter WHERE category LIKE? AND type =? COLLATE NOCASE", new String[]{str, str2});
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

    public final String d0(String str) {
        Cursor cursorRawQuery = getWritableDatabase().rawQuery("SELECT * FROM episode WHERE episode_stream_id=?", new String[]{str});
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
    }

    public final void k(String str, String str2, String str3) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (str2.equals("TV")) {
            if (N(str, str2, str3).equals("yes")) {
                Cursor cursorRawQuery = writableDatabase.rawQuery("DELETE FROM parental_control_tv WHERE category_id=? AND parent_id=?", new String[]{str, str3});
                cursorRawQuery.getCount();
                cursorRawQuery.close();
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put("category_id", str);
                contentValues.put("parent_id", str3);
                writableDatabase.insert("parental_control_tv", null, contentValues);
            }
        } else if (str2.equals("VOD")) {
            if (N(str, str2, str3).equals("yes")) {
                Cursor cursorRawQuery2 = writableDatabase.rawQuery("DELETE FROM parental_control_vod WHERE category_id=? AND parent_id=?", new String[]{str, str3});
                cursorRawQuery2.getCount();
                cursorRawQuery2.close();
            } else {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("category_id", str);
                contentValues2.put("parent_id", str3);
                writableDatabase.insert("parental_control_vod", null, contentValues2);
            }
        } else if (str2.equals("SERIES")) {
            if (N(str, str2, str3).equals("yes")) {
                Cursor cursorRawQuery3 = writableDatabase.rawQuery("DELETE FROM parental_control_series WHERE category_id=? AND parent_id=?", new String[]{str, str3});
                cursorRawQuery3.getCount();
                cursorRawQuery3.close();
            } else {
                ContentValues contentValues3 = new ContentValues();
                contentValues3.put("category_id", str);
                contentValues3.put("parent_id", str3);
                writableDatabase.insert("parental_control_series", null, contentValues3);
            }
        }
        Log.d("XCIPTV_TAG", HttpUrl.FRAGMENT_ENCODE_SET);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        switch (this.f11480G) {
            case 0:
                sQLiteDatabase.execSQL("CREATE TABLE episode(id INTEGER PRIMARY KEY AUTOINCREMENT,episode_stream_id TEXT,watched TEXT)");
                sQLiteDatabase.execSQL("CREATE TABLE category_filter(id TEXT,userid TEXT,appid TEXT,category TEXT,type TEXT,filter_status TEXT)");
                break;
            default:
                sQLiteDatabase.execSQL("CREATE TABLE parental_control_tv(id INTEGER PRIMARY KEY AUTOINCREMENT,category_id TEXT,parent_id)");
                sQLiteDatabase.execSQL("CREATE TABLE parental_control_vod(id INTEGER PRIMARY KEY AUTOINCREMENT,category_id TEXT,parent_id)");
                sQLiteDatabase.execSQL("CREATE TABLE parental_control_series(id INTEGER PRIMARY KEY AUTOINCREMENT,category_id TEXT,parent_id)");
                break;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i8, int i9) {
        switch (this.f11480G) {
            case 0:
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS episode");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS category_filter");
                onCreate(sQLiteDatabase);
                break;
            default:
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS parental_control_tv");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS parental_control_vod");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS parental_control_series");
                onCreate(sQLiteDatabase);
                break;
        }
    }
}
