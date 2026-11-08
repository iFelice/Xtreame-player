package c7;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import h7.e;
import h7.f;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11484G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f11485H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Context context, int i8) {
        super(context, "multiscreen.db", (SQLiteDatabase.CursorFactory) null, 4);
        this.f11484G = i8;
        if (i8 == 1) {
            super(context, "program_remind.db", (SQLiteDatabase.CursorFactory) null, 4);
            this.f11485H = new ArrayList();
        } else if (i8 != 2) {
            this.f11485H = new ArrayList();
        } else {
            super(context, "recorder.db", (SQLiteDatabase.CursorFactory) null, 6);
            this.f11485H = new ArrayList();
        }
    }

    public final void E(JSONArray jSONArray) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i8);
                contentValues.put("id", jSONObject.getString("id"));
                contentValues.put("profile", jSONObject.getString("profile"));
                contentValues.put("stream_name_one", jSONObject.getString("stream1"));
                contentValues.put("stream_name_two", jSONObject.getString("stream2"));
                contentValues.put("stream_name_three", jSONObject.getString("stream3"));
                contentValues.put("stream_name_four", jSONObject.getString("stream4"));
                contentValues.put("stream1", jSONObject.getString("stream_name_one"));
                contentValues.put("stream2", jSONObject.getString("stream_name_two"));
                contentValues.put("stream3", jSONObject.getString("stream_name_three"));
                contentValues.put("stream4", jSONObject.getString("stream_name_four"));
                writableDatabase.insert("multiscreen", null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
        } catch (JSONException unused) {
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public final void N(String str, String str2, String str3, String str4, String str5, String str6) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", str2);
        contentValues.put("path", str);
        contentValues.put("stream", str3);
        contentValues.put("status", str4);
        contentValues.put("length", str5);
        contentValues.put("date", str6);
        writableDatabase.insert("recordings", null, contentValues);
    }

    public final String O(String str) {
        Cursor cursorRawQuery = getWritableDatabase().rawQuery("SELECT profile FROM multiscreen WHERE profile LIKE?", new String[]{str});
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

    public final ArrayList a0(String str) {
        ArrayList arrayList = this.f11485H;
        arrayList.clear();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = str.equals("all") ? writableDatabase.rawQuery("SELECT * FROM program_reminds", null) : writableDatabase.rawQuery("SELECT * FROM program_reminds WHERE profile_id=? ORDER BY id DESC", new String[]{str});
            if (cursorRawQuery.moveToFirst()) {
                do {
                    e eVar = new e();
                    eVar.f25441a = cursorRawQuery.getString(0);
                    eVar.f25442b = cursorRawQuery.getString(1);
                    eVar.f25443c = cursorRawQuery.getString(2);
                    eVar.f25444d = cursorRawQuery.getString(3);
                    eVar.f25445e = cursorRawQuery.getString(4);
                    eVar.f25446f = cursorRawQuery.getString(5);
                    eVar.f25447g = cursorRawQuery.getString(6);
                    eVar.f25448h = cursorRawQuery.getString(7);
                    eVar.f25449i = cursorRawQuery.getString(8);
                    eVar.f25450j = cursorRawQuery.getString(9);
                    eVar.f25451k = cursorRawQuery.getString(10);
                    eVar.f25452l = cursorRawQuery.getString(11);
                    arrayList.add(eVar);
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

    public final ArrayList b0(String str) {
        ArrayList arrayList = this.f11485H;
        arrayList.clear();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = str.equals("Recorded") ? writableDatabase.rawQuery("SELECT * FROM recordings WHERE status=? ORDER BY id DESC", new String[]{str}) : writableDatabase.rawQuery("SELECT * FROM recordings WHERE status=? OR status=? ORDER BY id DESC", new String[]{str, "Recording Now"});
            if (cursorRawQuery.moveToFirst()) {
                do {
                    f fVar = new f();
                    fVar.f25453a = cursorRawQuery.getString(0);
                    fVar.f25454b = cursorRawQuery.getString(1);
                    fVar.f25455c = cursorRawQuery.getString(2);
                    fVar.f25456d = cursorRawQuery.getString(3);
                    fVar.f25457e = cursorRawQuery.getString(4);
                    fVar.f25458f = cursorRawQuery.getString(5);
                    fVar.f25459g = cursorRawQuery.getString(6);
                    arrayList.add(fVar);
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

    public final void c0(JSONArray jSONArray) throws Throwable {
        SQLiteDatabase sQLiteDatabase;
        String str = "pr_status";
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            int i8 = 0;
            while (i8 < jSONArray.length()) {
                SQLiteDatabase sQLiteDatabase2 = writableDatabase;
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i8);
                    contentValues.put("id", jSONObject.getString("id"));
                    contentValues.put("profile_id", jSONObject.getString("profile_id"));
                    contentValues.put("channel_name", jSONObject.getString("channel_name"));
                    contentValues.put("show_name", jSONObject.getString("show_name"));
                    contentValues.put("show_desc", jSONObject.getString("show_desc"));
                    contentValues.put("stream_id", jSONObject.getString("stream_id"));
                    contentValues.put("category_id", jSONObject.getString("category_id"));
                    contentValues.put("category_name", jSONObject.getString("category_name"));
                    contentValues.put("start_time", jSONObject.getString("start_time"));
                    contentValues.put("end_time", jSONObject.getString("end_time"));
                    contentValues.put(str, jSONObject.getString(str));
                    contentValues.put("direct_source", jSONObject.getString("direct_source"));
                    String str2 = str;
                    sQLiteDatabase = sQLiteDatabase2;
                    try {
                        sQLiteDatabase.insert("program_reminds", null, contentValues);
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

    public final void d0(String str, String str2) {
        try {
            Cursor cursorRawQuery = getWritableDatabase().rawQuery("UPDATE recordings SET status=? WHERE id=?", new String[]{str, str2});
            cursorRawQuery.getCount();
            if (cursorRawQuery.isClosed()) {
                return;
            }
            cursorRawQuery.close();
        } catch (Throwable unused) {
            throw null;
        }
    }

    public final void e0(String str, String str2) {
        try {
            Cursor cursorRawQuery = getWritableDatabase().rawQuery("UPDATE program_reminds SET pr_status=? WHERE id=?", new String[]{str2, str});
            if (cursorRawQuery.getCount() > 0) {
                cursorRawQuery.close();
            } else {
                cursorRawQuery.close();
            }
        } catch (Throwable unused) {
            throw null;
        }
    }

    public final void k(String str, String str2, String str3, String str4) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("profile", str2);
        if (str.equals("p1")) {
            contentValues.put("stream1", str4);
            contentValues.put("stream_name_one", str3);
        } else if (str.equals("p2")) {
            contentValues.put("stream2", str4);
            contentValues.put("stream_name_two", str3);
        } else if (str.equals("p3")) {
            contentValues.put("stream3", str4);
            contentValues.put("stream_name_three", str3);
        } else if (str.equals("p4")) {
            contentValues.put("stream4", str4);
            contentValues.put("stream_name_four", str3);
        }
        if (O(str2).equals("no")) {
            writableDatabase.insert("multiscreen", null, contentValues);
        } else {
            writableDatabase.update("multiscreen", contentValues, "profile = ?", new String[]{str2});
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        switch (this.f11484G) {
            case 0:
                sQLiteDatabase.execSQL("CREATE TABLE multiscreen(id INTEGER PRIMARY KEY AUTOINCREMENT,profile TEXT,stream1 TEXT,stream2 TEXT,stream3 TEXT,stream4 TEXT,stream_name_one TEXT,stream_name_two TEXT,stream_name_three TEXT,stream_name_four TEXT)");
                break;
            case 1:
                sQLiteDatabase.execSQL("CREATE TABLE program_reminds(id INTEGER PRIMARY KEY AUTOINCREMENT,profile_id TEXT,channel_name TEXT,show_name TEXT,show_desc TEXT,stream_id TEXT,category_id TEXT,category_name TEXT,start_time TEXT,end_time TEXT,pr_status TEXT,direct_source TEXT)");
                break;
            default:
                sQLiteDatabase.execSQL("CREATE TABLE recordings(id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,path TEXT,stream TEXT,status TEXT,length TEXT,date TEXT)");
                break;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i8, int i9) {
        switch (this.f11484G) {
            case 0:
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS multiscreen");
                onCreate(sQLiteDatabase);
                break;
            case 1:
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS program_reminds");
                onCreate(sQLiteDatabase);
                break;
            default:
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS recordings");
                onCreate(sQLiteDatabase);
                break;
        }
    }
}
