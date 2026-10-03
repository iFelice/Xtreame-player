package b7;

import Z3.C0442y;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import pe.hf.black20.BackupActivity;
import pe.hf.black20.R;
import pe.hf.black20.SplashActivity;
import pe.hf.black20.encryption.BackupEncrypt;

/* JADX INFO: renamed from: b7.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class AsyncTaskC0511e extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BackupActivity f10287b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AsyncTaskC0511e(BackupActivity backupActivity) {
        this(backupActivity, 0);
        this.f10286a = 0;
    }

    /* JADX WARN: Code duplicated, block: B:111:0x03f9 A[Catch: all -> 0x044b, LOOP:5: B:111:0x03f9->B:194:?, LOOP_START, TRY_LEAVE, TryCatch #4 {all -> 0x044b, blocks: (B:109:0x03f3, B:111:0x03f9), top: B:154:0x03f3 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x0473 A[Catch: all -> 0x049b, LOOP:6: B:125:0x0473->B:196:?, LOOP_START, TryCatch #16 {all -> 0x049b, blocks: (B:123:0x046d, B:125:0x0473, B:126:0x047d, B:127:0x0480, B:129:0x0485, B:128:0x0483), top: B:179:0x046d }] */
    /* JADX WARN: Code duplicated, block: B:127:0x0480 A[Catch: all -> 0x049b, TryCatch #16 {all -> 0x049b, blocks: (B:123:0x046d, B:125:0x0473, B:126:0x047d, B:127:0x0480, B:129:0x0485, B:128:0x0483), top: B:179:0x046d }] */
    /* JADX WARN: Code duplicated, block: B:128:0x0483 A[Catch: all -> 0x049b, TryCatch #16 {all -> 0x049b, blocks: (B:123:0x046d, B:125:0x0473, B:126:0x047d, B:127:0x0480, B:129:0x0485, B:128:0x0483), top: B:179:0x046d }] */
    /* JADX WARN: Code duplicated, block: B:135:0x04a3 A[PHI: r10
      0x04a3: PHI (r10v3 android.database.Cursor) = (r10v2 android.database.Cursor), (r10v4 android.database.Cursor) binds: [B:140:0x04b2, B:134:0x04a1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:51:0x02c3 A[Catch: all -> 0x02e5, LOOP:1: B:51:0x02c3->B:186:?, LOOP_START, TRY_LEAVE, TryCatch #1 {all -> 0x02e5, blocks: (B:49:0x02bd, B:51:0x02c3), top: B:148:0x02bd }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0312 A[Catch: all -> 0x033a, LOOP:2: B:63:0x0312->B:188:?, LOOP_START, TryCatch #15 {all -> 0x033a, blocks: (B:61:0x030c, B:63:0x0312, B:64:0x031c, B:65:0x031f, B:67:0x0324, B:66:0x0322), top: B:177:0x030c }] */
    /* JADX WARN: Code duplicated, block: B:65:0x031f A[Catch: all -> 0x033a, TryCatch #15 {all -> 0x033a, blocks: (B:61:0x030c, B:63:0x0312, B:64:0x031c, B:65:0x031f, B:67:0x0324, B:66:0x0322), top: B:177:0x030c }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0322 A[Catch: all -> 0x033a, TryCatch #15 {all -> 0x033a, blocks: (B:61:0x030c, B:63:0x0312, B:64:0x031c, B:65:0x031f, B:67:0x0324, B:66:0x0322), top: B:177:0x030c }] */
    /* JADX WARN: Code duplicated, block: B:79:0x035f A[Catch: all -> 0x0387, LOOP:3: B:79:0x035f->B:190:?, LOOP_START, TryCatch #3 {all -> 0x0387, blocks: (B:77:0x0359, B:79:0x035f, B:80:0x0369, B:81:0x036c, B:83:0x0371, B:82:0x036f), top: B:152:0x0359 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x036c A[Catch: all -> 0x0387, TryCatch #3 {all -> 0x0387, blocks: (B:77:0x0359, B:79:0x035f, B:80:0x0369, B:81:0x036c, B:83:0x0371, B:82:0x036f), top: B:152:0x0359 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x036f A[Catch: all -> 0x0387, TryCatch #3 {all -> 0x0387, blocks: (B:77:0x0359, B:79:0x035f, B:80:0x0369, B:81:0x036c, B:83:0x0371, B:82:0x036f), top: B:152:0x0359 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x03ac A[Catch: all -> 0x03d4, LOOP:4: B:95:0x03ac->B:192:?, LOOP_START, TryCatch #11 {all -> 0x03d4, blocks: (B:93:0x03a6, B:95:0x03ac, B:96:0x03b6, B:97:0x03b9, B:99:0x03be, B:98:0x03bc), top: B:168:0x03a6 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x03b9 A[Catch: all -> 0x03d4, TryCatch #11 {all -> 0x03d4, blocks: (B:93:0x03a6, B:95:0x03ac, B:96:0x03b6, B:97:0x03b9, B:99:0x03be, B:98:0x03bc), top: B:168:0x03a6 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x03bc A[Catch: all -> 0x03d4, TryCatch #11 {all -> 0x03d4, blocks: (B:93:0x03a6, B:95:0x03ac, B:96:0x03b6, B:97:0x03b9, B:99:0x03be, B:98:0x03bc), top: B:168:0x03a6 }] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public final void a() throws Throwable {
        Cursor cursorRawQuery;
        ArrayList arrayList;
        Cursor cursorRawQuery2;
        ArrayList arrayList2;
        Cursor cursorRawQuery3;
        ArrayList arrayList3;
        Cursor cursorRawQuery4;
        ArrayList arrayList4;
        Cursor cursorRawQuery5;
        ArrayList arrayList5;
        Cursor cursor;
        ArrayList arrayList6;
        Cursor cursorRawQuery6;
        C0442y c0442y;
        String string;
        Cursor cursorRawQuery7;
        C0442y c0442y2;
        String string2;
        C0442y c0442y3;
        String string3;
        C0442y c0442y4;
        String string4;
        int i8 = this.f10286a;
        BackupActivity backupActivity = this.f10287b;
        switch (i8) {
            case 0:
                c7.d dVar = backupActivity.f28267M;
                ArrayList arrayList7 = dVar.f11491L;
                arrayList7.clear();
                try {
                    cursorRawQuery = dVar.getWritableDatabase().rawQuery("SELECT * FROM fav", null);
                    try {
                        try {
                            if (cursorRawQuery.moveToFirst()) {
                                do {
                                    p096m2.o oVar = new p096m2.o();
                                    oVar.f27236G = cursorRawQuery.getString(0);
                                    oVar.f27237H = cursorRawQuery.getString(1);
                                    oVar.f27238I = cursorRawQuery.getString(2);
                                    oVar.f27239J = cursorRawQuery.getString(3);
                                    arrayList7.add(oVar);
                                } while (cursorRawQuery.moveToNext());
                            }
                        } catch (Throwable unused) {
                            if (cursorRawQuery != null) {
                            }
                            backupActivity.f28269O = arrayList7;
                            backupActivity.f28271Q = backupActivity.f28267M.E0();
                            c7.d dVar2 = backupActivity.f28267M;
                            arrayList = dVar2.f11492M;
                            arrayList.clear();
                            cursorRawQuery2 = dVar2.getWritableDatabase().rawQuery("SELECT * FROM fav", null);
                            if (cursorRawQuery2.moveToFirst()) {
                                do {
                                    h7.c cVar = new h7.c();
                                    cVar.f25426a = cursorRawQuery2.getString(0);
                                    cVar.f25427b = cursorRawQuery2.getString(1);
                                    cVar.f25428c = cursorRawQuery2.getString(2);
                                    arrayList.add(cVar);
                                    break;
                                } while (cursorRawQuery2.moveToNext());
                            }
                            cursorRawQuery2.close();
                            backupActivity.f28270P = arrayList;
                            backupActivity.f28272R = backupActivity.f28263I.d0();
                            c7.b bVar = backupActivity.f28266L;
                            arrayList2 = bVar.f11481H;
                            arrayList2.clear();
                            cursorRawQuery3 = bVar.getWritableDatabase().rawQuery("SELECT * FROM parental_control_tv", null);
                            try {
                                try {
                                    if (cursorRawQuery3.moveToFirst()) {
                                        do {
                                            c0442y4 = new C0442y(1);
                                            string4 = cursorRawQuery3.getString(0);
                                            switch (1) {
                                                case 1:
                                                    c0442y4.f8406a = string4;
                                                    break;
                                                default:
                                                    c0442y4.f8406a = string4;
                                                    break;
                                            }
                                            c0442y4.f8407b = cursorRawQuery3.getString(1);
                                            c0442y4.f8408c = cursorRawQuery3.getString(2);
                                            arrayList2.add(c0442y4);
                                        } while (cursorRawQuery3.moveToNext());
                                    }
                                } catch (Throwable unused2) {
                                    if (cursorRawQuery3 != null) {
                                    }
                                    backupActivity.f28273S = arrayList2;
                                    c7.b bVar2 = backupActivity.f28266L;
                                    arrayList3 = bVar2.f11482I;
                                    arrayList3.clear();
                                    cursorRawQuery4 = bVar2.getWritableDatabase().rawQuery("SELECT * FROM parental_control_vod", null);
                                    if (cursorRawQuery4.moveToFirst()) {
                                        do {
                                            c0442y3 = new C0442y(1);
                                            string3 = cursorRawQuery4.getString(0);
                                            switch (1) {
                                                case 1:
                                                    c0442y3.f8406a = string3;
                                                    break;
                                                default:
                                                    c0442y3.f8406a = string3;
                                                    break;
                                            }
                                            c0442y3.f8407b = cursorRawQuery4.getString(1);
                                            c0442y3.f8408c = cursorRawQuery4.getString(2);
                                            arrayList3.add(c0442y3);
                                        } while (cursorRawQuery4.moveToNext());
                                    }
                                    cursorRawQuery4.close();
                                    backupActivity.f28274T = arrayList3;
                                    c7.b bVar3 = backupActivity.f28266L;
                                    arrayList4 = bVar3.f11483J;
                                    arrayList4.clear();
                                    cursorRawQuery5 = bVar3.getWritableDatabase().rawQuery("SELECT * FROM parental_control_series", null);
                                    if (cursorRawQuery5.moveToFirst()) {
                                        do {
                                            c0442y2 = new C0442y(1);
                                            string2 = cursorRawQuery5.getString(0);
                                            switch (1) {
                                                case 1:
                                                    c0442y2.f8406a = string2;
                                                    break;
                                                default:
                                                    c0442y2.f8406a = string2;
                                                    break;
                                            }
                                            c0442y2.f8407b = cursorRawQuery5.getString(1);
                                            c0442y2.f8408c = cursorRawQuery5.getString(2);
                                            arrayList4.add(c0442y2);
                                        } while (cursorRawQuery5.moveToNext());
                                    }
                                    cursorRawQuery5.close();
                                    backupActivity.f28275U = arrayList4;
                                    c7.c cVar2 = backupActivity.f28265K;
                                    arrayList5 = cVar2.f11485H;
                                    arrayList5.clear();
                                    cursorRawQuery7 = cVar2.getWritableDatabase().rawQuery("SELECT * FROM multiscreen", null);
                                    if (cursorRawQuery7.moveToFirst()) {
                                        do {
                                            p034e2.z zVar = new p034e2.z();
                                            zVar.f24852a = cursorRawQuery7.getString(0);
                                            zVar.f24853b = cursorRawQuery7.getString(1);
                                            zVar.f24854c = cursorRawQuery7.getString(2);
                                            zVar.f24855d = cursorRawQuery7.getString(3);
                                            zVar.f24856e = cursorRawQuery7.getString(4);
                                            zVar.f24857f = cursorRawQuery7.getString(5);
                                            zVar.f24858g = cursorRawQuery7.getString(6);
                                            zVar.f24859h = cursorRawQuery7.getString(7);
                                            zVar.f24860i = cursorRawQuery7.getString(8);
                                            zVar.f24861j = cursorRawQuery7.getString(9);
                                            arrayList5.add(zVar);
                                            break;
                                        } while (cursorRawQuery7.moveToNext());
                                    }
                                    cursorRawQuery7.close();
                                    backupActivity.f28276V = arrayList5;
                                    c7.b bVar4 = backupActivity.f28264J;
                                    arrayList6 = bVar4.f11483J;
                                    arrayList6.clear();
                                    cursorRawQuery6 = bVar4.getWritableDatabase().rawQuery("SELECT * FROM episode", null);
                                    if (cursorRawQuery6.moveToFirst()) {
                                        do {
                                            c0442y = new C0442y(2);
                                            string = cursorRawQuery6.getString(0);
                                            switch (2) {
                                                case 1:
                                                    c0442y.f8406a = string;
                                                    break;
                                                default:
                                                    c0442y.f8406a = string;
                                                    break;
                                            }
                                            c0442y.f8407b = cursorRawQuery6.getString(1);
                                            c0442y.f8408c = cursorRawQuery6.getString(2);
                                            arrayList6.add(c0442y);
                                        } while (cursorRawQuery6.moveToNext());
                                    }
                                    if (!cursorRawQuery6.isClosed()) {
                                        cursorRawQuery6.close();
                                    }
                                    backupActivity.f28277W = arrayList6;
                                    backupActivity.f28278X = backupActivity.f28268N.a0("all");
                                    return;
                                }
                                if (cursorRawQuery6.moveToFirst()) {
                                    do {
                                        c0442y = new C0442y(2);
                                        string = cursorRawQuery6.getString(0);
                                        switch (2) {
                                            case 1:
                                                c0442y.f8406a = string;
                                                break;
                                            default:
                                                c0442y.f8406a = string;
                                                break;
                                        }
                                        c0442y.f8407b = cursorRawQuery6.getString(1);
                                        c0442y.f8408c = cursorRawQuery6.getString(2);
                                        arrayList6.add(c0442y);
                                    } while (cursorRawQuery6.moveToNext());
                                }
                                if (!cursorRawQuery6.isClosed()) {
                                    cursorRawQuery6.close();
                                }
                            } catch (Throwable unused3) {
                                if (cursorRawQuery6 != null && !cursorRawQuery6.isClosed()) {
                                }
                                backupActivity.f28277W = arrayList6;
                                backupActivity.f28278X = backupActivity.f28268N.a0("all");
                                return;
                            }
                            cursorRawQuery3.close();
                            backupActivity.f28273S = arrayList2;
                            c7.b bVar5 = backupActivity.f28266L;
                            arrayList3 = bVar5.f11482I;
                            arrayList3.clear();
                            cursorRawQuery4 = bVar5.getWritableDatabase().rawQuery("SELECT * FROM parental_control_vod", null);
                            if (cursorRawQuery4.moveToFirst()) {
                                do {
                                    c0442y3 = new C0442y(1);
                                    string3 = cursorRawQuery4.getString(0);
                                    switch (1) {
                                        case 1:
                                            c0442y3.f8406a = string3;
                                            break;
                                        default:
                                            c0442y3.f8406a = string3;
                                            break;
                                    }
                                    c0442y3.f8407b = cursorRawQuery4.getString(1);
                                    c0442y3.f8408c = cursorRawQuery4.getString(2);
                                    arrayList3.add(c0442y3);
                                } while (cursorRawQuery4.moveToNext());
                            }
                            cursorRawQuery4.close();
                            backupActivity.f28274T = arrayList3;
                            c7.b bVar6 = backupActivity.f28266L;
                            arrayList4 = bVar6.f11483J;
                            arrayList4.clear();
                            cursorRawQuery5 = bVar6.getWritableDatabase().rawQuery("SELECT * FROM parental_control_series", null);
                            if (cursorRawQuery5.moveToFirst()) {
                                do {
                                    c0442y2 = new C0442y(1);
                                    string2 = cursorRawQuery5.getString(0);
                                    switch (1) {
                                        case 1:
                                            c0442y2.f8406a = string2;
                                            break;
                                        default:
                                            c0442y2.f8406a = string2;
                                            break;
                                    }
                                    c0442y2.f8407b = cursorRawQuery5.getString(1);
                                    c0442y2.f8408c = cursorRawQuery5.getString(2);
                                    arrayList4.add(c0442y2);
                                } while (cursorRawQuery5.moveToNext());
                            }
                            cursorRawQuery5.close();
                            backupActivity.f28275U = arrayList4;
                            c7.c cVar3 = backupActivity.f28265K;
                            arrayList5 = cVar3.f11485H;
                            arrayList5.clear();
                            cursorRawQuery7 = cVar3.getWritableDatabase().rawQuery("SELECT * FROM multiscreen", null);
                            if (cursorRawQuery7.moveToFirst()) {
                                do {
                                    p034e2.z zVar2 = new p034e2.z();
                                    zVar2.f24852a = cursorRawQuery7.getString(0);
                                    zVar2.f24853b = cursorRawQuery7.getString(1);
                                    zVar2.f24854c = cursorRawQuery7.getString(2);
                                    zVar2.f24855d = cursorRawQuery7.getString(3);
                                    zVar2.f24856e = cursorRawQuery7.getString(4);
                                    zVar2.f24857f = cursorRawQuery7.getString(5);
                                    zVar2.f24858g = cursorRawQuery7.getString(6);
                                    zVar2.f24859h = cursorRawQuery7.getString(7);
                                    zVar2.f24860i = cursorRawQuery7.getString(8);
                                    zVar2.f24861j = cursorRawQuery7.getString(9);
                                    arrayList5.add(zVar2);
                                    break;
                                } while (cursorRawQuery7.moveToNext());
                            }
                            cursorRawQuery7.close();
                            backupActivity.f28276V = arrayList5;
                            c7.b bVar7 = backupActivity.f28264J;
                            arrayList6 = bVar7.f11483J;
                            arrayList6.clear();
                            cursorRawQuery6 = bVar7.getWritableDatabase().rawQuery("SELECT * FROM episode", null);
                            backupActivity.f28277W = arrayList6;
                            backupActivity.f28278X = backupActivity.f28268N.a0("all");
                            return;
                        }
                        try {
                            try {
                                try {
                                    try {
                                        cursorRawQuery2 = dVar2.getWritableDatabase().rawQuery("SELECT * FROM fav", null);
                                        try {
                                            try {
                                                try {
                                                    try {
                                                        if (cursorRawQuery2.moveToFirst()) {
                                                            do {
                                                                h7.c cVar4 = new h7.c();
                                                                cVar4.f25426a = cursorRawQuery2.getString(0);
                                                                cVar4.f25427b = cursorRawQuery2.getString(1);
                                                                cVar4.f25428c = cursorRawQuery2.getString(2);
                                                                arrayList.add(cVar4);
                                                            } while (cursorRawQuery2.moveToNext());
                                                        }
                                                    } catch (Throwable unused4) {
                                                        if (cursorRawQuery2 != null) {
                                                        }
                                                        backupActivity.f28270P = arrayList;
                                                        backupActivity.f28272R = backupActivity.f28263I.d0();
                                                        c7.b bVar8 = backupActivity.f28266L;
                                                        arrayList2 = bVar8.f11481H;
                                                        arrayList2.clear();
                                                        cursorRawQuery3 = bVar8.getWritableDatabase().rawQuery("SELECT * FROM parental_control_tv", null);
                                                        if (cursorRawQuery3.moveToFirst()) {
                                                            do {
                                                                c0442y4 = new C0442y(1);
                                                                string4 = cursorRawQuery3.getString(0);
                                                                switch (1) {
                                                                    case 1:
                                                                        c0442y4.f8406a = string4;
                                                                        break;
                                                                    default:
                                                                        c0442y4.f8406a = string4;
                                                                        break;
                                                                }
                                                                c0442y4.f8407b = cursorRawQuery3.getString(1);
                                                                c0442y4.f8408c = cursorRawQuery3.getString(2);
                                                                arrayList2.add(c0442y4);
                                                            } while (cursorRawQuery3.moveToNext());
                                                        }
                                                        cursorRawQuery3.close();
                                                        backupActivity.f28273S = arrayList2;
                                                        c7.b bVar9 = backupActivity.f28266L;
                                                        arrayList3 = bVar9.f11482I;
                                                        arrayList3.clear();
                                                        cursorRawQuery4 = bVar9.getWritableDatabase().rawQuery("SELECT * FROM parental_control_vod", null);
                                                        if (cursorRawQuery4.moveToFirst()) {
                                                            do {
                                                                c0442y3 = new C0442y(1);
                                                                string3 = cursorRawQuery4.getString(0);
                                                                switch (1) {
                                                                    case 1:
                                                                        c0442y3.f8406a = string3;
                                                                        break;
                                                                    default:
                                                                        c0442y3.f8406a = string3;
                                                                        break;
                                                                }
                                                                c0442y3.f8407b = cursorRawQuery4.getString(1);
                                                                c0442y3.f8408c = cursorRawQuery4.getString(2);
                                                                arrayList3.add(c0442y3);
                                                            } while (cursorRawQuery4.moveToNext());
                                                        }
                                                        cursorRawQuery4.close();
                                                        backupActivity.f28274T = arrayList3;
                                                        c7.b bVar10 = backupActivity.f28266L;
                                                        arrayList4 = bVar10.f11483J;
                                                        arrayList4.clear();
                                                        cursorRawQuery5 = bVar10.getWritableDatabase().rawQuery("SELECT * FROM parental_control_series", null);
                                                        if (cursorRawQuery5.moveToFirst()) {
                                                            do {
                                                                c0442y2 = new C0442y(1);
                                                                string2 = cursorRawQuery5.getString(0);
                                                                switch (1) {
                                                                    case 1:
                                                                        c0442y2.f8406a = string2;
                                                                        break;
                                                                    default:
                                                                        c0442y2.f8406a = string2;
                                                                        break;
                                                                }
                                                                c0442y2.f8407b = cursorRawQuery5.getString(1);
                                                                c0442y2.f8408c = cursorRawQuery5.getString(2);
                                                                arrayList4.add(c0442y2);
                                                            } while (cursorRawQuery5.moveToNext());
                                                        }
                                                        cursorRawQuery5.close();
                                                        backupActivity.f28275U = arrayList4;
                                                        c7.c cVar5 = backupActivity.f28265K;
                                                        arrayList5 = cVar5.f11485H;
                                                        arrayList5.clear();
                                                        cursorRawQuery7 = cVar5.getWritableDatabase().rawQuery("SELECT * FROM multiscreen", null);
                                                        if (cursorRawQuery7.moveToFirst()) {
                                                            do {
                                                                p034e2.z zVar3 = new p034e2.z();
                                                                zVar3.f24852a = cursorRawQuery7.getString(0);
                                                                zVar3.f24853b = cursorRawQuery7.getString(1);
                                                                zVar3.f24854c = cursorRawQuery7.getString(2);
                                                                zVar3.f24855d = cursorRawQuery7.getString(3);
                                                                zVar3.f24856e = cursorRawQuery7.getString(4);
                                                                zVar3.f24857f = cursorRawQuery7.getString(5);
                                                                zVar3.f24858g = cursorRawQuery7.getString(6);
                                                                zVar3.f24859h = cursorRawQuery7.getString(7);
                                                                zVar3.f24860i = cursorRawQuery7.getString(8);
                                                                zVar3.f24861j = cursorRawQuery7.getString(9);
                                                                arrayList5.add(zVar3);
                                                                break;
                                                            } while (cursorRawQuery7.moveToNext());
                                                        }
                                                        cursorRawQuery7.close();
                                                        backupActivity.f28276V = arrayList5;
                                                        c7.b bVar11 = backupActivity.f28264J;
                                                        arrayList6 = bVar11.f11483J;
                                                        arrayList6.clear();
                                                        cursorRawQuery6 = bVar11.getWritableDatabase().rawQuery("SELECT * FROM episode", null);
                                                        if (cursorRawQuery6.moveToFirst()) {
                                                            do {
                                                                c0442y = new C0442y(2);
                                                                string = cursorRawQuery6.getString(0);
                                                                switch (2) {
                                                                    case 1:
                                                                        c0442y.f8406a = string;
                                                                        break;
                                                                    default:
                                                                        c0442y.f8406a = string;
                                                                        break;
                                                                }
                                                                c0442y.f8407b = cursorRawQuery6.getString(1);
                                                                c0442y.f8408c = cursorRawQuery6.getString(2);
                                                                arrayList6.add(c0442y);
                                                            } while (cursorRawQuery6.moveToNext());
                                                        }
                                                        if (!cursorRawQuery6.isClosed()) {
                                                            cursorRawQuery6.close();
                                                        }
                                                        backupActivity.f28277W = arrayList6;
                                                        backupActivity.f28278X = backupActivity.f28268N.a0("all");
                                                        return;
                                                    }
                                                    cursorRawQuery6 = bVar11.getWritableDatabase().rawQuery("SELECT * FROM episode", null);
                                                    if (cursorRawQuery6.moveToFirst()) {
                                                        do {
                                                            c0442y = new C0442y(2);
                                                            string = cursorRawQuery6.getString(0);
                                                            switch (2) {
                                                                case 1:
                                                                    c0442y.f8406a = string;
                                                                    break;
                                                                default:
                                                                    c0442y.f8406a = string;
                                                                    break;
                                                            }
                                                            c0442y.f8407b = cursorRawQuery6.getString(1);
                                                            c0442y.f8408c = cursorRawQuery6.getString(2);
                                                            arrayList6.add(c0442y);
                                                        } while (cursorRawQuery6.moveToNext());
                                                    }
                                                    if (!cursorRawQuery6.isClosed()) {
                                                        cursorRawQuery6.close();
                                                    }
                                                } catch (Throwable unused5) {
                                                    cursorRawQuery6 = null;
                                                }
                                                if (cursorRawQuery4.moveToFirst()) {
                                                    do {
                                                        c0442y3 = new C0442y(1);
                                                        string3 = cursorRawQuery4.getString(0);
                                                        switch (1) {
                                                            case 1:
                                                                c0442y3.f8406a = string3;
                                                                break;
                                                            default:
                                                                c0442y3.f8406a = string3;
                                                                break;
                                                        }
                                                        c0442y3.f8407b = cursorRawQuery4.getString(1);
                                                        c0442y3.f8408c = cursorRawQuery4.getString(2);
                                                        arrayList3.add(c0442y3);
                                                    } while (cursorRawQuery4.moveToNext());
                                                }
                                            } catch (Throwable unused6) {
                                                if (cursorRawQuery4 != null) {
                                                }
                                                backupActivity.f28274T = arrayList3;
                                                c7.b bVar12 = backupActivity.f28266L;
                                                arrayList4 = bVar12.f11483J;
                                                arrayList4.clear();
                                                cursorRawQuery5 = bVar12.getWritableDatabase().rawQuery("SELECT * FROM parental_control_series", null);
                                                if (cursorRawQuery5.moveToFirst()) {
                                                    do {
                                                        c0442y2 = new C0442y(1);
                                                        string2 = cursorRawQuery5.getString(0);
                                                        switch (1) {
                                                            case 1:
                                                                c0442y2.f8406a = string2;
                                                                break;
                                                            default:
                                                                c0442y2.f8406a = string2;
                                                                break;
                                                        }
                                                        c0442y2.f8407b = cursorRawQuery5.getString(1);
                                                        c0442y2.f8408c = cursorRawQuery5.getString(2);
                                                        arrayList4.add(c0442y2);
                                                    } while (cursorRawQuery5.moveToNext());
                                                }
                                                cursorRawQuery5.close();
                                                backupActivity.f28275U = arrayList4;
                                                c7.c cVar6 = backupActivity.f28265K;
                                                arrayList5 = cVar6.f11485H;
                                                arrayList5.clear();
                                                cursorRawQuery7 = cVar6.getWritableDatabase().rawQuery("SELECT * FROM multiscreen", null);
                                                if (cursorRawQuery7.moveToFirst()) {
                                                    do {
                                                        p034e2.z zVar4 = new p034e2.z();
                                                        zVar4.f24852a = cursorRawQuery7.getString(0);
                                                        zVar4.f24853b = cursorRawQuery7.getString(1);
                                                        zVar4.f24854c = cursorRawQuery7.getString(2);
                                                        zVar4.f24855d = cursorRawQuery7.getString(3);
                                                        zVar4.f24856e = cursorRawQuery7.getString(4);
                                                        zVar4.f24857f = cursorRawQuery7.getString(5);
                                                        zVar4.f24858g = cursorRawQuery7.getString(6);
                                                        zVar4.f24859h = cursorRawQuery7.getString(7);
                                                        zVar4.f24860i = cursorRawQuery7.getString(8);
                                                        zVar4.f24861j = cursorRawQuery7.getString(9);
                                                        arrayList5.add(zVar4);
                                                        break;
                                                    } while (cursorRawQuery7.moveToNext());
                                                }
                                                cursorRawQuery7.close();
                                                backupActivity.f28276V = arrayList5;
                                                c7.b bVar13 = backupActivity.f28264J;
                                                arrayList6 = bVar13.f11483J;
                                                arrayList6.clear();
                                                cursorRawQuery6 = bVar13.getWritableDatabase().rawQuery("SELECT * FROM episode", null);
                                                if (cursorRawQuery6.moveToFirst()) {
                                                    do {
                                                        c0442y = new C0442y(2);
                                                        string = cursorRawQuery6.getString(0);
                                                        switch (2) {
                                                            case 1:
                                                                c0442y.f8406a = string;
                                                                break;
                                                            default:
                                                                c0442y.f8406a = string;
                                                                break;
                                                        }
                                                        c0442y.f8407b = cursorRawQuery6.getString(1);
                                                        c0442y.f8408c = cursorRawQuery6.getString(2);
                                                        arrayList6.add(c0442y);
                                                    } while (cursorRawQuery6.moveToNext());
                                                }
                                                if (!cursorRawQuery6.isClosed()) {
                                                    cursorRawQuery6.close();
                                                }
                                                backupActivity.f28277W = arrayList6;
                                                backupActivity.f28278X = backupActivity.f28268N.a0("all");
                                                return;
                                            }
                                            if (cursorRawQuery7.moveToFirst()) {
                                                do {
                                                    p034e2.z zVar5 = new p034e2.z();
                                                    zVar5.f24852a = cursorRawQuery7.getString(0);
                                                    zVar5.f24853b = cursorRawQuery7.getString(1);
                                                    zVar5.f24854c = cursorRawQuery7.getString(2);
                                                    zVar5.f24855d = cursorRawQuery7.getString(3);
                                                    zVar5.f24856e = cursorRawQuery7.getString(4);
                                                    zVar5.f24857f = cursorRawQuery7.getString(5);
                                                    zVar5.f24858g = cursorRawQuery7.getString(6);
                                                    zVar5.f24859h = cursorRawQuery7.getString(7);
                                                    zVar5.f24860i = cursorRawQuery7.getString(8);
                                                    zVar5.f24861j = cursorRawQuery7.getString(9);
                                                    arrayList5.add(zVar5);
                                                } while (cursorRawQuery7.moveToNext());
                                            }
                                            cursorRawQuery7.close();
                                        } catch (Throwable unused7) {
                                            cursor = cursorRawQuery7;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                        }
                                    } catch (Throwable unused8) {
                                        cursorRawQuery2 = null;
                                    }
                                    cursorRawQuery4 = bVar9.getWritableDatabase().rawQuery("SELECT * FROM parental_control_vod", null);
                                } catch (Throwable unused9) {
                                    cursorRawQuery4 = null;
                                }
                                cursorRawQuery7 = cVar6.getWritableDatabase().rawQuery("SELECT * FROM multiscreen", null);
                            } catch (Throwable unused10) {
                                cursor = null;
                            }
                            if (cursorRawQuery5.moveToFirst()) {
                                do {
                                    c0442y2 = new C0442y(1);
                                    string2 = cursorRawQuery5.getString(0);
                                    switch (1) {
                                        case 1:
                                            c0442y2.f8406a = string2;
                                            break;
                                        default:
                                            c0442y2.f8406a = string2;
                                            break;
                                    }
                                    c0442y2.f8407b = cursorRawQuery5.getString(1);
                                    c0442y2.f8408c = cursorRawQuery5.getString(2);
                                    arrayList4.add(c0442y2);
                                } while (cursorRawQuery5.moveToNext());
                            }
                        } catch (Throwable unused11) {
                            if (cursorRawQuery5 != null) {
                            }
                            backupActivity.f28275U = arrayList4;
                            c7.c cVar7 = backupActivity.f28265K;
                            arrayList5 = cVar7.f11485H;
                            arrayList5.clear();
                            cursorRawQuery7 = cVar7.getWritableDatabase().rawQuery("SELECT * FROM multiscreen", null);
                            if (cursorRawQuery7.moveToFirst()) {
                                do {
                                    p034e2.z zVar6 = new p034e2.z();
                                    zVar6.f24852a = cursorRawQuery7.getString(0);
                                    zVar6.f24853b = cursorRawQuery7.getString(1);
                                    zVar6.f24854c = cursorRawQuery7.getString(2);
                                    zVar6.f24855d = cursorRawQuery7.getString(3);
                                    zVar6.f24856e = cursorRawQuery7.getString(4);
                                    zVar6.f24857f = cursorRawQuery7.getString(5);
                                    zVar6.f24858g = cursorRawQuery7.getString(6);
                                    zVar6.f24859h = cursorRawQuery7.getString(7);
                                    zVar6.f24860i = cursorRawQuery7.getString(8);
                                    zVar6.f24861j = cursorRawQuery7.getString(9);
                                    arrayList5.add(zVar6);
                                    break;
                                } while (cursorRawQuery7.moveToNext());
                            }
                            cursorRawQuery7.close();
                            backupActivity.f28276V = arrayList5;
                            c7.b bVar14 = backupActivity.f28264J;
                            arrayList6 = bVar14.f11483J;
                            arrayList6.clear();
                            cursorRawQuery6 = bVar14.getWritableDatabase().rawQuery("SELECT * FROM episode", null);
                            if (cursorRawQuery6.moveToFirst()) {
                                do {
                                    c0442y = new C0442y(2);
                                    string = cursorRawQuery6.getString(0);
                                    switch (2) {
                                        case 1:
                                            c0442y.f8406a = string;
                                            break;
                                        default:
                                            c0442y.f8406a = string;
                                            break;
                                    }
                                    c0442y.f8407b = cursorRawQuery6.getString(1);
                                    c0442y.f8408c = cursorRawQuery6.getString(2);
                                    arrayList6.add(c0442y);
                                } while (cursorRawQuery6.moveToNext());
                            }
                            if (!cursorRawQuery6.isClosed()) {
                                cursorRawQuery6.close();
                            }
                            backupActivity.f28277W = arrayList6;
                            backupActivity.f28278X = backupActivity.f28268N.a0("all");
                            return;
                        }
                        cursorRawQuery5 = bVar12.getWritableDatabase().rawQuery("SELECT * FROM parental_control_series", null);
                    } catch (Throwable unused12) {
                        cursorRawQuery5 = null;
                    }
                    break;
                } catch (Throwable unused13) {
                    cursorRawQuery = null;
                }
                cursorRawQuery.close();
                backupActivity.f28269O = arrayList7;
                backupActivity.f28271Q = backupActivity.f28267M.E0();
                c7.d dVar3 = backupActivity.f28267M;
                arrayList = dVar3.f11492M;
                arrayList.clear();
                cursorRawQuery2.close();
                backupActivity.f28270P = arrayList;
                backupActivity.f28272R = backupActivity.f28263I.d0();
                c7.b bVar15 = backupActivity.f28266L;
                arrayList2 = bVar15.f11481H;
                arrayList2.clear();
                try {
                    cursorRawQuery3 = bVar15.getWritableDatabase().rawQuery("SELECT * FROM parental_control_tv", null);
                    if (cursorRawQuery3.moveToFirst()) {
                        do {
                            c0442y4 = new C0442y(1);
                            string4 = cursorRawQuery3.getString(0);
                            switch (1) {
                                case 1:
                                    c0442y4.f8406a = string4;
                                    break;
                                default:
                                    c0442y4.f8406a = string4;
                                    break;
                            }
                            c0442y4.f8407b = cursorRawQuery3.getString(1);
                            c0442y4.f8408c = cursorRawQuery3.getString(2);
                            arrayList2.add(c0442y4);
                        } while (cursorRawQuery3.moveToNext());
                    }
                } catch (Throwable unused14) {
                    cursorRawQuery3 = null;
                }
                cursorRawQuery3.close();
                backupActivity.f28273S = arrayList2;
                c7.b bVar16 = backupActivity.f28266L;
                arrayList3 = bVar16.f11482I;
                arrayList3.clear();
                cursorRawQuery4.close();
                backupActivity.f28274T = arrayList3;
                c7.b bVar17 = backupActivity.f28266L;
                arrayList4 = bVar17.f11483J;
                arrayList4.clear();
                cursorRawQuery5.close();
                backupActivity.f28275U = arrayList4;
                c7.c cVar8 = backupActivity.f28265K;
                arrayList5 = cVar8.f11485H;
                arrayList5.clear();
                backupActivity.f28276V = arrayList5;
                c7.b bVar18 = backupActivity.f28264J;
                arrayList6 = bVar18.f11483J;
                arrayList6.clear();
                backupActivity.f28277W = arrayList6;
                backupActivity.f28278X = backupActivity.f28268N.a0("all");
                return;
            case 1:
                try {
                    String strA = BackupEncrypt.a(backupActivity.f28291k0, backupActivity.f28286f0);
                    Objects.requireNonNull(strA);
                    JSONObject jSONObject = new JSONObject(strA);
                    JSONArray jSONArray = jSONObject.getJSONArray("favourites");
                    JSONArray jSONArray2 = new JSONArray();
                    if (jSONObject.has("favouriteprofiles")) {
                        jSONArray2 = jSONObject.getJSONArray("favouriteprofiles");
                    }
                    JSONArray jSONArray3 = jSONObject.getJSONArray("resumes");
                    JSONArray jSONArray4 = jSONObject.getJSONArray("userslist");
                    JSONArray jSONArray5 = jSONArray2;
                    JSONArray jSONArray6 = jSONObject.getJSONArray("parentaltv");
                    JSONArray jSONArray7 = jSONObject.getJSONArray("parentalvod");
                    JSONArray jSONArray8 = jSONObject.getJSONArray("parentalseries");
                    JSONArray jSONArray9 = jSONObject.getJSONArray("multiscreen");
                    JSONArray jSONArray10 = jSONObject.getJSONArray("watched");
                    JSONArray jSONArray11 = jSONObject.getJSONArray("program_reminders");
                    SharedPreferences sharedPreferences = backupActivity.f28261G.getSharedPreferences("pe.hf.black20", 0);
                    backupActivity.f28262H = sharedPreferences;
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString("watched", jSONObject.getString("watched"));
                    editorEdit.putString("parental_contorl", jSONObject.getString("parental_contorl"));
                    editorEdit.putString("whichplayer_tv", jSONObject.getString("whichplayer_tv"));
                    editorEdit.putString("whichplayer_vod", jSONObject.getString("whichplayer_vod"));
                    editorEdit.putString("whichplayer_series", jSONObject.getString("whichplayer_series"));
                    editorEdit.putString("xciptv_profile", jSONObject.getString("xciptv_profile"));
                    editorEdit.putString("ovpn_auto", jSONObject.getString("ovpn_auto"));
                    editorEdit.putString("pc_lock", jSONObject.getString("pc_lock"));
                    editorEdit.apply();
                    editorEdit.commit();
                    SQLiteDatabase writableDatabase = backupActivity.f28263I.getWritableDatabase();
                    try {
                        writableDatabase.delete("user_history", null, null);
                        writableDatabase.close();
                        c7.d dVar4 = backupActivity.f28267M;
                        dVar4.L0();
                        SQLiteDatabase writableDatabase2 = dVar4.getWritableDatabase();
                        writableDatabase2.delete("fav_profiles", null, null);
                        writableDatabase2.close();
                        backupActivity.f28263I.g0(jSONArray4);
                        SQLiteDatabase writableDatabase3 = backupActivity.f28266L.getWritableDatabase();
                        writableDatabase3.delete("parental_control_tv", null, null);
                        writableDatabase3.delete("parental_control_vod", null, null);
                        writableDatabase3.delete("parental_control_series", null, null);
                        writableDatabase3.close();
                        backupActivity.f28266L.a0(jSONArray6, "TV");
                        backupActivity.f28266L.a0(jSONArray7, "VOD");
                        backupActivity.f28266L.a0(jSONArray8, "SERIES");
                        SQLiteDatabase writableDatabase4 = backupActivity.f28267M.getWritableDatabase();
                        writableDatabase4.delete("fav", null, null);
                        writableDatabase4.delete("fav_profiles", null, null);
                        writableDatabase4.delete("resume", null, null);
                        writableDatabase4.close();
                        Log.d("XCIPTV_TAG", "----- DeleteFavAndResumeData");
                        backupActivity.f28267M.w0(jSONArray);
                        if (jSONArray5.length() > 0) {
                            backupActivity.f28267M.x0(jSONArray5);
                        }
                        backupActivity.f28267M.y0(jSONArray3);
                        SQLiteDatabase writableDatabase5 = backupActivity.f28264J.getWritableDatabase();
                        writableDatabase5.delete("episode", null, null);
                        writableDatabase5.close();
                        backupActivity.f28264J.b0(jSONArray10);
                        SQLiteDatabase writableDatabase6 = backupActivity.f28265K.getWritableDatabase();
                        writableDatabase6.delete("multiscreen", null, null);
                        writableDatabase6.close();
                        backupActivity.f28265K.E(jSONArray9);
                        SQLiteDatabase writableDatabase7 = backupActivity.f28268N.getWritableDatabase();
                        writableDatabase7.delete("program_reminds", null, null);
                        writableDatabase7.close();
                        backupActivity.f28268N.c0(jSONArray11);
                        return;
                    } catch (Throwable th) {
                        writableDatabase.close();
                        throw th;
                    }
                } catch (JSONException unused15) {
                    return;
                }
            case 2:
                try {
                    String strF = new F2.G(6).F(backupActivity.f28293m0, backupActivity.f28294n0);
                    backupActivity.f28289i0 = strF;
                    if (strF != null) {
                        Log.d("XCIPTV_TAG", strF);
                        backupActivity.f28295o0 = null;
                        JSONObject jSONObject2 = new JSONObject(backupActivity.f28289i0);
                        backupActivity.f28295o0 = jSONObject2;
                        backupActivity.f28287g0 = jSONObject2.getString("success");
                        backupActivity.f28288h0 = backupActivity.f28295o0.getString("msg");
                    } else {
                        backupActivity.f28287g0 = "0";
                    }
                    return;
                } catch (JSONException unused16) {
                    backupActivity.f28287g0 = "0";
                    return;
                }
            default:
                String str = backupActivity.f28292l0 + "CloudBackup.php?user=" + backupActivity.f28285e0 + "&pass=" + backupActivity.f28286f0;
                backupActivity.f28293m0 = str;
                try {
                    String strE = new F2.G(5).E(str);
                    backupActivity.f28289i0 = strE;
                    if (strE != null) {
                        backupActivity.f28295o0 = null;
                        JSONObject jSONObject3 = new JSONObject(backupActivity.f28289i0);
                        backupActivity.f28295o0 = jSONObject3;
                        backupActivity.f28287g0 = jSONObject3.getString("success");
                        backupActivity.f28288h0 = backupActivity.f28295o0.getString("msg");
                        backupActivity.f28291k0 = backupActivity.f28295o0.getString("backup");
                    } else {
                        backupActivity.f28287g0 = "0";
                    }
                    return;
                } catch (JSONException e8) {
                    backupActivity.f28287g0 = "0";
                    Log.d("XCIPTV_TAG", "BackupActivity - JSONException " + e8);
                    return;
                }
        }
    }

    public final void b(Void r14) {
        int i8 = this.f10286a;
        p000a.r rVar = null;
        BackupActivity backupActivity = this.f10287b;
        switch (i8) {
            case 0:
                super.onPostExecute(r14);
                String string = backupActivity.f28262H.contains("xciptv_profile") ? backupActivity.f28262H.getString("xciptv_profile", null) : "Default (XC)";
                String string2 = backupActivity.f28262H.contains("parental_contorl") ? backupActivity.f28262H.getString("parental_contorl", null) : "0000";
                String string3 = backupActivity.f28262H.contains("pc_lock") ? backupActivity.f28262H.getString("pc_lock", null) : "no";
                Gson gsonCreate = new GsonBuilder().create();
                JsonObject jsonObject = new JsonObject();
                jsonObject.add("favourites", gsonCreate.toJsonTree(backupActivity.f28269O));
                jsonObject.add("favouriteprofiles", gsonCreate.toJsonTree(backupActivity.f28270P));
                jsonObject.add("resumes", gsonCreate.toJsonTree(backupActivity.f28271Q));
                jsonObject.add("userslist", gsonCreate.toJsonTree(backupActivity.f28272R));
                jsonObject.add("parentaltv", gsonCreate.toJsonTree(backupActivity.f28273S));
                jsonObject.add("parentalvod", gsonCreate.toJsonTree(backupActivity.f28274T));
                jsonObject.add("parentalseries", gsonCreate.toJsonTree(backupActivity.f28275U));
                jsonObject.add("multiscreen", gsonCreate.toJsonTree(backupActivity.f28276V));
                jsonObject.add("watched", gsonCreate.toJsonTree(backupActivity.f28277W));
                jsonObject.add("program_reminders", gsonCreate.toJsonTree(backupActivity.f28278X));
                jsonObject.addProperty("version", backupActivity.f28262H.getString("version", null));
                jsonObject.addProperty("versioncode", backupActivity.f28262H.getString("versioncode", null));
                jsonObject.addProperty("parental_contorl", string2);
                jsonObject.addProperty("whichplayer_tv", backupActivity.f28262H.getString("whichplayer_tv", null));
                jsonObject.addProperty("whichplayer_vod", backupActivity.f28262H.getString("whichplayer_vod", null));
                jsonObject.addProperty("whichplayer_series", backupActivity.f28262H.getString("whichplayer_series", null));
                jsonObject.addProperty("xciptv_profile", string);
                jsonObject.addProperty("ovpn_auto", "off");
                jsonObject.addProperty("pc_lock", string3);
                jsonObject.toString().replaceAll("\\r\\n|\\r|\\n", HttpUrl.FRAGMENT_ENCODE_SET);
                backupActivity.f28279Y.setEnabled(true);
                backupActivity.f28281a0.setEnabled(true);
                backupActivity.f28280Z.setEnabled(true);
                String strValueOf = String.valueOf(jsonObject);
                backupActivity.f28284d0 = strValueOf;
                try {
                    String strReplaceAll = strValueOf.replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET);
                    File file = new File(backupActivity.f28261G.getFilesDir().getPath() + "/backup.json");
                    if (!file.exists()) {
                        file.createNewFile();
                    }
                    FileWriter fileWriter = new FileWriter(file);
                    fileWriter.append((CharSequence) strReplaceAll);
                    fileWriter.flush();
                    fileWriter.close();
                    break;
                } catch (IOException unused) {
                }
                new AsyncTaskC0511e(backupActivity, rVar).execute(new Void[0]);
                break;
            case 1:
                super.onPostExecute(r14);
                backupActivity.f28279Y.setEnabled(true);
                backupActivity.f28281a0.setEnabled(true);
                backupActivity.f28280Z.setEnabled(true);
                backupActivity.f28296p0.setVisibility(8);
                backupActivity.f28282b0.setText(R.string.restored_successfully);
                BackupActivity.a(backupActivity, backupActivity.getString(R.string.restore_success_restarting_app));
                BackupActivity backupActivity2 = backupActivity.f28261G;
                Intent intent = new Intent(backupActivity2, (Class<?>) SplashActivity.class);
                ((AlarmManager) backupActivity2.getSystemService("alarm")).set(1, System.currentTimeMillis() + 1, Build.VERSION.SDK_INT >= 31 ? PendingIntent.getActivity(backupActivity2, 123456, intent, 67108864) : PendingIntent.getActivity(backupActivity2, 123456, intent, 301989888));
                System.exit(0);
                break;
            case 2:
                super.onPostExecute(r14);
                backupActivity.f28296p0.setVisibility(8);
                backupActivity.f28282b0.setText(R.string.backup_completed);
                BackupActivity.a(backupActivity, backupActivity.f28288h0);
                break;
            default:
                super.onPostExecute(r14);
                if (!backupActivity.f28287g0.equals("1")) {
                    backupActivity.f28279Y.setEnabled(true);
                    backupActivity.f28281a0.setEnabled(true);
                    backupActivity.f28280Z.setEnabled(true);
                    backupActivity.f28296p0.setVisibility(8);
                    backupActivity.f28282b0.setText(backupActivity.getString(R.string.restore_failed) + backupActivity.f28288h0);
                    BackupActivity.a(backupActivity, backupActivity.f28288h0);
                } else {
                    backupActivity.f28291k0 = backupActivity.f28291k0.replaceAll(" ", MqttTopic.SINGLE_LEVEL_WILDCARD);
                    new AsyncTaskC0511e(backupActivity, (Object) rVar).execute(new Void[0]);
                }
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) throws Throwable {
        switch (this.f10286a) {
            case 0:
                a();
                break;
            case 1:
                a();
                break;
            case 2:
                a();
                break;
            default:
                a();
                break;
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        switch (this.f10286a) {
            case 0:
                b((Void) obj);
                break;
            case 1:
                b((Void) obj);
                break;
            case 2:
                b((Void) obj);
                break;
            default:
                b((Void) obj);
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        String strEncodeToString;
        int i8 = this.f10286a;
        BackupActivity backupActivity = this.f10287b;
        switch (i8) {
            case 0:
                super.onPreExecute();
                backupActivity.f28296p0.setVisibility(0);
                backupActivity.f28282b0.setText(R.string.xc_backup_running_wait);
                break;
            case 1:
                super.onPreExecute();
                backupActivity.f28282b0.setText(R.string.backup_completed_restore_running);
                break;
            case 2:
                super.onPreExecute();
                String str = backupActivity.f28284d0;
                String str2 = backupActivity.f28286f0;
                String str3 = BackupEncrypt.f29247a;
                byte[] bArr = new byte[16];
                Arrays.fill(bArr, (byte) 0);
                try {
                    String str4 = BackupEncrypt.f29247a;
                    Charset charset = StandardCharsets.UTF_8;
                    IvParameterSpec ivParameterSpec = new IvParameterSpec(str4.getBytes(charset));
                    byte[] bytes = str2.getBytes(charset);
                    System.arraycopy(bytes, 0, bArr, 0, bytes.length < 16 ? bytes.length : 16);
                    SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
                    cipher.init(1, secretKeySpec, ivParameterSpec);
                    strEncodeToString = Base64.encodeToString(cipher.doFinal(str.getBytes()), 0);
                } catch (Exception e8) {
                    e8.printStackTrace();
                    Log.d("XCIPTV_TAG", "BackupEncrypt - Encrypt Exception------------------------");
                    strEncodeToString = null;
                }
                backupActivity.f28284d0 = strEncodeToString;
                backupActivity.f28293m0 = p000a.r.j(new StringBuilder(), backupActivity.f28292l0, "CloudBackup.php");
                backupActivity.f28294n0 = "user=" + backupActivity.f28285e0 + "&pass=" + backupActivity.f28286f0 + "&resetcode=" + backupActivity.f28290j0 + "&backup=" + backupActivity.f28284d0;
                break;
            default:
                super.onPreExecute();
                backupActivity.f28296p0.setVisibility(0);
                backupActivity.f28282b0.setText(R.string.restoring_backup_wait);
                break;
        }
    }

    public /* synthetic */ AsyncTaskC0511e(BackupActivity backupActivity, int i8) {
        this.f10286a = i8;
        this.f10287b = backupActivity;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AsyncTaskC0511e(BackupActivity backupActivity, p000a.r rVar) {
        this(backupActivity, 2);
        this.f10286a = 2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AsyncTaskC0511e(BackupActivity backupActivity, AbstractC0508d abstractC0508d) {
        this(backupActivity, 3);
        this.f10286a = 3;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AsyncTaskC0511e(BackupActivity backupActivity, Object obj) {
        this(backupActivity, 1);
        this.f10286a = 1;
    }
}
