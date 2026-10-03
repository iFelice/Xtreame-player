package p133r0;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import d7.g;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p117p0.x;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes.dex */
public final class b extends SQLiteOpenHelper implements a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f29689G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context, int i8) {
        super(context.getApplicationContext(), "exoplayer_internal.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f29689G = i8;
        if (i8 != 1) {
        } else {
            super(context, "epg.db", (SQLiteDatabase.CursorFactory) null, 1);
        }
    }

    public final void E(JSONArray jSONArray) throws Throwable {
        Object obj;
        Object obj2 = null;
        if (!getWritableDatabase().isDbLockedByCurrentThread()) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.delete("epgdb", null, null);
            writableDatabase.close();
        }
        SQLiteDatabase writableDatabase2 = getWritableDatabase();
        int i8 = 0;
        while (i8 < jSONArray.length()) {
            try {
                JSONArray jSONArray2 = jSONArray.getJSONArray(i8);
                if (jSONArray2.length() > 0) {
                    writableDatabase2.beginTransaction();
                    int i9 = 0;
                    while (i9 < jSONArray2.length()) {
                        try {
                            try {
                                JSONObject jSONObject = jSONArray2.getJSONObject(i9);
                                String string = jSONObject.getString("channel");
                                String string2 = jSONObject.getString("start");
                                String string3 = jSONObject.getString("stop");
                                String string4 = jSONObject.getString("title");
                                try {
                                    String string5 = jSONObject.getString("description");
                                    ContentValues contentValues = new ContentValues();
                                    contentValues.put("start", Methods.v(string2));
                                    contentValues.put("stop", Methods.v(string3));
                                    contentValues.put("channel", string);
                                    contentValues.put("title", string4);
                                    contentValues.put("desc", string5);
                                    obj = null;
                                    try {
                                        try {
                                            writableDatabase2.insert("epgdb", null, contentValues);
                                        } catch (Throwable th) {
                                            th = th;
                                            writableDatabase2.endTransaction();
                                            throw th;
                                        }
                                    } catch (Exception e8) {
                                        e = e8;
                                        Log.d("XCIPTV_TAG", String.valueOf(e));
                                    }
                                } catch (Exception e9) {
                                    e = e9;
                                    obj = null;
                                } catch (Throwable th2) {
                                    th = th2;
                                    obj = null;
                                }
                            } catch (Exception e10) {
                                e = e10;
                                obj = obj2;
                            }
                            i9++;
                            obj2 = obj;
                        } catch (Throwable th3) {
                            th = th3;
                            obj = obj2;
                        }
                    }
                    obj = obj2;
                    writableDatabase2.setTransactionSuccessful();
                    try {
                        writableDatabase2.endTransaction();
                    } catch (JSONException unused) {
                    }
                } else {
                    obj = obj2;
                }
            } catch (JSONException unused2) {
            }
            i8++;
            obj2 = obj;
        }
    }

    public final ArrayList N(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        arrayList.clear();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = getWritableDatabase().rawQuery("SELECT * FROM epgdb WHERE stop >=? AND start < ? AND channel =? GROUP BY start ORDER BY start ASC ", new String[]{str, str2, str3});
            if (cursorRawQuery.moveToFirst()) {
                do {
                    g gVar = new g();
                    gVar.f24677a = cursorRawQuery.getString(1);
                    gVar.f24678b = cursorRawQuery.getString(2);
                    gVar.f24679c = cursorRawQuery.getString(3);
                    gVar.f24680d = cursorRawQuery.getString(4);
                    gVar.f24681e = cursorRawQuery.getString(5);
                    arrayList.add(gVar);
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

    public final ArrayList O(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        arrayList.clear();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = str3.equals("no-title") ? writableDatabase.rawQuery("SELECT * FROM epgdb WHERE start =? AND channel =? ", new String[]{str, str2}) : writableDatabase.rawQuery("SELECT * FROM epgdb WHERE start =? AND title =? ", new String[]{str, str3});
            if (cursorRawQuery.moveToFirst()) {
                do {
                    g gVar = new g();
                    gVar.f24677a = cursorRawQuery.getString(1);
                    gVar.f24678b = cursorRawQuery.getString(2);
                    gVar.f24679c = cursorRawQuery.getString(3);
                    gVar.f24680d = cursorRawQuery.getString(4);
                    gVar.f24681e = cursorRawQuery.getString(5);
                    arrayList.add(gVar);
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

    public final String a0(String str) {
        String string = HttpUrl.FRAGMENT_ENCODE_SET;
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = getWritableDatabase().rawQuery("SELECT start FROM epgdb WHERE  channel =? LIMIT 1", new String[]{str});
            if (!cursorRawQuery.moveToFirst()) {
                if (!cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
                return HttpUrl.FRAGMENT_ENCODE_SET;
            }
            do {
                string = cursorRawQuery.getString(0);
            } while (cursorRawQuery.moveToNext());
            if (!cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return string;
        } catch (Throwable unused) {
            if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return string;
        }
    }

    public final void k(ArrayList arrayList) {
        if (!getWritableDatabase().isDbLockedByCurrentThread()) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.delete("epgdb", null, null);
            writableDatabase.close();
        }
        Log.d("XCIPTV_TAG", "XCDownloadXMLTV ------------ EPG insert to DB started");
        SQLiteDatabase writableDatabase2 = getWritableDatabase();
        writableDatabase2.beginTransaction();
        try {
            new ContentValues();
            for (int i8 = 0; i8 < arrayList.size(); i8++) {
                writableDatabase2.execSQL("INSERT INTO epgdb (start, stop, channel, title, `desc`)  VALUES (?, ?, ?, ?, ?)", new Object[]{((HashMap) arrayList.get(i8)).get("start"), ((HashMap) arrayList.get(i8)).get("stop"), ((HashMap) arrayList.get(i8)).get("channel"), ((HashMap) arrayList.get(i8)).get("title"), ((HashMap) arrayList.get(i8)).get("desc")});
            }
            writableDatabase2.setTransactionSuccessful();
        } finally {
            writableDatabase2.endTransaction();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        switch (this.f29689G) {
            case 0:
                break;
            default:
                sQLiteDatabase.execSQL("CREATE TABLE epgdb(id INTEGER PRIMARY KEY AUTOINCREMENT,start TEXT,stop TEXT,channel TEXT,title TEXT,desc TEXT)");
                break;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i8, int i9) {
        switch (this.f29689G) {
            case 0:
                Cursor cursorQuery = sQLiteDatabase.query("sqlite_master", new String[]{"type", "name"}, null, null, null, null, null);
                while (cursorQuery.moveToNext()) {
                    try {
                        String string = cursorQuery.getString(0);
                        String string2 = cursorQuery.getString(1);
                        if (!"sqlite_sequence".equals(string2)) {
                            String str = "DROP " + string + " IF EXISTS " + string2;
                            try {
                                sQLiteDatabase.execSQL(str);
                            } catch (SQLException e8) {
                                x.d("SADatabaseProvider", "Error executing " + str, e8);
                            }
                        }
                    } catch (Throwable th) {
                        if (cursorQuery != null) {
                            try {
                                cursorQuery.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            break;
                        }
                        throw th;
                    }
                }
                cursorQuery.close();
                return;
            default:
                super.onDowngrade(sQLiteDatabase, i8, i9);
                return;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i8, int i9) {
        switch (this.f29689G) {
            case 0:
                break;
            default:
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS epgdb");
                onCreate(sQLiteDatabase);
                break;
        }
    }
}
