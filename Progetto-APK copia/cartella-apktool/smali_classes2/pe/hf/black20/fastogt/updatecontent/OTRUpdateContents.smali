.class public Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lg7/c;


# static fields
.field public static final synthetic R:I


# instance fields
.field public G:Landroid/content/SharedPreferences;

.field public H:Landroid/content/SharedPreferences$Editor;

.field public I:Lc7/a;

.field public J:Lc7/d;

.field public K:Lc7/a;

.field public L:Lr0/b;

.field public M:Lh7/i;

.field public final N:Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;

.field public O:Landroid/widget/Button;

.field public P:Landroid/widget/TextView;

.field public Q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->N:Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;

    .line 5
    .line 6
    const-string v0, "yes"

    .line 7
    .line 8
    iput-object v0, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->Q:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "ORT_PROCESS_STATUS"

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 9
    .line 10
    .line 11
    const-string v0, "yes"

    .line 12
    .line 13
    iput-object v0, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->Q:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 16
    .line 17
    const-string v4, "MM/dd/yyyy HH:mm:ss"

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Ljava/util/Date;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->H:Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    const-string v5, "tvvodseries_dl_time"

    .line 34
    .line 35
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->H:Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->P:Landroid/widget/TextView;

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v5, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->N:Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;

    .line 51
    .line 52
    const v6, 0x7f1301bb

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v6, "!"

    .line 63
    .line 64
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->O:Landroid/widget/Button;

    .line 75
    .line 76
    const-string v4, "Close"

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->O:Landroid/widget/Button;

    .line 82
    .line 83
    const/4 v4, 0x1

    .line 84
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->Q:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v1, v2}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 94
    .line 95
    .line 96
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    .line 102
    sput-boolean v4, Lpe/hf/black20/ORPlayerMainActivity;->I0:Z

    .line 103
    .line 104
    :cond_0
    const-string v0, "XCIPTV_TAG"

    .line 105
    .line 106
    const-string v1, "OTRUpdateContents EPG update has been started in the backgroud"

    .line 107
    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    invoke-static {v5}, Ll7/g;->b(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const-string v2, "OTRUpdateContents JobScheduler is Running"

    .line 119
    .line 120
    const-string v3, "OTRUpdateContents startBackgroudTask"

    .line 121
    .line 122
    const-string v4, "OTRUpdateContents JobScheduler is not Running"

    .line 123
    .line 124
    if-eqz v1, :cond_2

    .line 125
    .line 126
    invoke-static {v5}, Lpe/hf/black20/ORPlayerMainActivity;->w(Landroid/content/Context;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_1

    .line 131
    .line 132
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    invoke-static {v5}, Lpe/hf/black20/ORPlayerMainActivity;->A(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    invoke-static {v5}, Lpe/hf/black20/CategoriesActivity;->i(Landroid/content/Context;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_3

    .line 151
    .line 152
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    invoke-static {v5}, Lpe/hf/black20/CategoriesActivity;->l(Landroid/content/Context;)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_3
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 166
    .line 167
    .line 168
    const-string v1, "OTRUpdateContents is completed. "

    .line 169
    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->N:Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0e011d

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    const-string v5, "#99000000"

    .line 31
    .line 32
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const v5, 0x7f0b0586

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4, v2, v1, v5}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    const p1, 0x7f0b014f

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/Button;

    .line 59
    .line 60
    const v1, 0x7f1301ee

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Ll/c;

    .line 71
    .line 72
    const/16 v1, 0x12

    .line 73
    .line 74
    invoke-direct {v0, v1, p0, v2}, Ll/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final c(Lorg/json/JSONObject;)V
    .locals 41

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "episodes"

    .line 4
    .line 5
    const-string v2, "seasons"

    .line 6
    .line 7
    const-string v3, "XCIPTV_TAG"

    .line 8
    .line 9
    const-string v4, "name"

    .line 10
    .line 11
    const-string v5, "id"

    .line 12
    .line 13
    new-instance v6, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v7, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v8, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v9, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v10, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v11, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v12, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v13, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v14, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v14, Lorg/json/JSONArray;

    .line 59
    .line 60
    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v14, Lorg/json/JSONArray;

    .line 64
    .line 65
    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 66
    .line 67
    .line 68
    :try_start_0
    const-string v15, "data"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 69
    .line 70
    move-object/from16 v1, p1

    .line 71
    .line 72
    :try_start_1
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v15, "packages"

    .line 77
    .line 78
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const/16 v16, 0x1

    .line 83
    .line 84
    move-object/from16 v17, v10

    .line 85
    .line 86
    const/4 v15, 0x0

    .line 87
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-ge v15, v10, :cond_17

    .line 92
    .line 93
    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    move-object/from16 v18, v1

    .line 98
    .line 99
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    move/from16 v19, v15

    .line 104
    .line 105
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v15

    .line 109
    move-object/from16 v20, v9

    .line 110
    .line 111
    new-instance v9, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    move-object/from16 v21, v8

    .line 117
    .line 118
    const-string v8, "--------package name------"

    .line 119
    .line 120
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    const-string v8, "streams"

    .line 134
    .line 135
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    const-string v9, "vods"

    .line 140
    .line 141
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 142
    .line 143
    .line 144
    move-result-object v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    move-object/from16 v22, v3

    .line 146
    .line 147
    :try_start_2
    const-string v3, "serials"

    .line 148
    .line 149
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    move-object/from16 v23, v13

    .line 154
    .line 155
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    move-object/from16 v25, v0

    .line 164
    .line 165
    move-object/from16 v24, v10

    .line 166
    .line 167
    const/4 v10, 0x0

    .line 168
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 169
    .line 170
    .line 171
    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    move-object/from16 v26, v13

    .line 173
    .line 174
    const-string v13, "num"

    .line 175
    .line 176
    move-object/from16 v27, v2

    .line 177
    .line 178
    const-string v2, "icon"

    .line 179
    .line 180
    move-object/from16 v28, v3

    .line 181
    .line 182
    const-string v3, "parent_id"

    .line 183
    .line 184
    move-object/from16 v29, v7

    .line 185
    .line 186
    const-string v7, "category_name"

    .line 187
    .line 188
    move-object/from16 v30, v12

    .line 189
    .line 190
    const-string v12, "groups"

    .line 191
    .line 192
    move-object/from16 v31, v9

    .line 193
    .line 194
    const-string v9, "0"

    .line 195
    .line 196
    move-object/from16 v32, v14

    .line 197
    .line 198
    const-string v14, ""

    .line 199
    .line 200
    move-object/from16 v33, v6

    .line 201
    .line 202
    const-string v6, "category_id"

    .line 203
    .line 204
    if-ge v10, v0, :cond_5

    .line 205
    .line 206
    add-int/lit8 v16, v16, 0x1

    .line 207
    .line 208
    :try_start_3
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    move-object/from16 v34, v8

    .line 213
    .line 214
    const-string v8, "epg"

    .line 215
    .line 216
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    move/from16 v35, v10

    .line 221
    .line 222
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    move-object/from16 v36, v15

    .line 227
    .line 228
    const-string v15, "display_name"

    .line 229
    .line 230
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v15

    .line 234
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    move-object/from16 v37, v1

    .line 243
    .line 244
    const-string v1, "urls"

    .line 245
    .line 246
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 251
    .line 252
    .line 253
    move-result v38

    .line 254
    if-lez v38, :cond_0

    .line 255
    .line 256
    move-object/from16 v38, v8

    .line 257
    .line 258
    const/4 v8, 0x0

    .line 259
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    goto :goto_2

    .line 264
    :catch_0
    move-exception v0

    .line 265
    move-object/from16 v1, p0

    .line 266
    .line 267
    move-object/from16 v3, v22

    .line 268
    .line 269
    goto/16 :goto_13

    .line 270
    .line 271
    :cond_0
    move-object/from16 v38, v8

    .line 272
    .line 273
    move-object v1, v14

    .line 274
    :goto_2
    new-instance v8, Ljava/util/HashMap;

    .line 275
    .line 276
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 277
    .line 278
    .line 279
    move-object/from16 v39, v1

    .line 280
    .line 281
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v8, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v8, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    const-string v1, "stream_type"

    .line 292
    .line 293
    const-string v13, "live"

    .line 294
    .line 295
    invoke-virtual {v8, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    const-string v1, "stream_id"

    .line 299
    .line 300
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    const-string v0, "stream_icon"

    .line 308
    .line 309
    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    const-string v0, "epg_channel_id"

    .line 313
    .line 314
    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    const-string v0, "added"

    .line 318
    .line 319
    invoke-virtual {v8, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-lez v0, :cond_2

    .line 327
    .line 328
    const/4 v0, 0x0

    .line 329
    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    new-instance v0, Ljava/util/HashMap;

    .line 334
    .line 335
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    if-nez v2, :cond_1

    .line 352
    .line 353
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    :cond_1
    invoke-virtual {v8, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-object/from16 v1, v37

    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    .line 363
    .line 364
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 365
    .line 366
    .line 367
    move-object/from16 v1, v37

    .line 368
    .line 369
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-nez v2, :cond_3

    .line 383
    .line 384
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    :cond_3
    invoke-virtual {v8, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    :goto_3
    const-string v0, "custom_sid"

    .line 391
    .line 392
    move-object/from16 v10, v36

    .line 393
    .line 394
    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    const-string v0, "tv_archive"

    .line 398
    .line 399
    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    const-string v0, "direct_source"

    .line 403
    .line 404
    move-object/from16 v14, v39

    .line 405
    .line 406
    invoke-virtual {v8, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    const-string v0, "tv_archive_duration"

    .line 410
    .line 411
    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-object/from16 v0, v33

    .line 415
    .line 416
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    const-string v2, "programs"

    .line 420
    .line 421
    move-object/from16 v3, v38

    .line 422
    .line 423
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-lez v2, :cond_4

    .line 432
    .line 433
    const-string v2, "programs"

    .line 434
    .line 435
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    move-object/from16 v8, v32

    .line 440
    .line 441
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 442
    .line 443
    .line 444
    goto :goto_4

    .line 445
    :cond_4
    move-object/from16 v8, v32

    .line 446
    .line 447
    :goto_4
    add-int/lit8 v2, v35, 0x1

    .line 448
    .line 449
    move-object v6, v0

    .line 450
    move-object v14, v8

    .line 451
    move-object v15, v10

    .line 452
    move-object/from16 v13, v26

    .line 453
    .line 454
    move-object/from16 v3, v28

    .line 455
    .line 456
    move-object/from16 v7, v29

    .line 457
    .line 458
    move-object/from16 v12, v30

    .line 459
    .line 460
    move-object/from16 v9, v31

    .line 461
    .line 462
    move-object/from16 v8, v34

    .line 463
    .line 464
    move v10, v2

    .line 465
    move-object/from16 v2, v27

    .line 466
    .line 467
    goto/16 :goto_1

    .line 468
    .line 469
    :cond_5
    move-object v10, v15

    .line 470
    move-object/from16 v0, v33

    .line 471
    .line 472
    const/4 v15, 0x0

    .line 473
    :goto_5
    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONArray;->length()I

    .line 474
    .line 475
    .line 476
    move-result v8
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 477
    move-object/from16 v33, v11

    .line 478
    .line 479
    const-string v11, "vod"

    .line 480
    .line 481
    if-ge v15, v8, :cond_a

    .line 482
    .line 483
    move-object/from16 v8, v31

    .line 484
    .line 485
    move-object/from16 v31, v0

    .line 486
    .line 487
    :try_start_4
    invoke-virtual {v8, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 492
    .line 493
    .line 494
    move-result-object v11

    .line 495
    move-object/from16 v34, v8

    .line 496
    .line 497
    const-string v8, "display_name"

    .line 498
    .line 499
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v8

    .line 503
    move-object/from16 v35, v2

    .line 504
    .line 505
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    move-object/from16 v36, v12

    .line 510
    .line 511
    new-instance v12, Ljava/util/HashMap;

    .line 512
    .line 513
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 514
    .line 515
    .line 516
    move/from16 v37, v15

    .line 517
    .line 518
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v15

    .line 522
    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v12, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    const-string v8, "stream_type"

    .line 529
    .line 530
    const-string v15, "movie"

    .line 531
    .line 532
    invoke-virtual {v12, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    const-string v8, "stream_id"

    .line 536
    .line 537
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-virtual {v12, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    const-string v0, "stream_icon"

    .line 545
    .line 546
    const-string v8, "preview_icon"

    .line 547
    .line 548
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    invoke-virtual {v12, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    const-string v0, "rating"

    .line 556
    .line 557
    invoke-virtual {v12, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    const-string v0, "rating_5based"

    .line 561
    .line 562
    invoke-virtual {v12, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    const-string v0, "added"

    .line 566
    .line 567
    invoke-virtual {v12, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-lez v0, :cond_7

    .line 575
    .line 576
    const/4 v0, 0x0

    .line 577
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    new-instance v0, Ljava/util/HashMap;

    .line 582
    .line 583
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-object/from16 v8, v30

    .line 596
    .line 597
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v15

    .line 601
    if-nez v15, :cond_6

    .line 602
    .line 603
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    :cond_6
    invoke-virtual {v12, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    goto :goto_6

    .line 610
    :cond_7
    move-object/from16 v8, v30

    .line 611
    .line 612
    new-instance v0, Ljava/util/HashMap;

    .line 613
    .line 614
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v2

    .line 630
    if-nez v2, :cond_8

    .line 631
    .line 632
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    :cond_8
    invoke-virtual {v12, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    :goto_6
    const-string v0, "container_extension"

    .line 639
    .line 640
    invoke-virtual {v12, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    const-string v0, "custom_sid"

    .line 644
    .line 645
    invoke-virtual {v12, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    const-string v0, "urls"

    .line 649
    .line 650
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 655
    .line 656
    .line 657
    move-result v2

    .line 658
    if-lez v2, :cond_9

    .line 659
    .line 660
    const/4 v2, 0x0

    .line 661
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    goto :goto_7

    .line 666
    :cond_9
    move-object v0, v14

    .line 667
    :goto_7
    const-string v2, "direct_source"

    .line 668
    .line 669
    invoke-virtual {v12, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-object/from16 v0, v29

    .line 673
    .line 674
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    add-int/lit8 v15, v37, 0x1

    .line 678
    .line 679
    move-object/from16 v29, v0

    .line 680
    .line 681
    move-object/from16 v30, v8

    .line 682
    .line 683
    move-object/from16 v0, v31

    .line 684
    .line 685
    move-object/from16 v11, v33

    .line 686
    .line 687
    move-object/from16 v31, v34

    .line 688
    .line 689
    move-object/from16 v2, v35

    .line 690
    .line 691
    move-object/from16 v12, v36

    .line 692
    .line 693
    goto/16 :goto_5

    .line 694
    .line 695
    :cond_a
    move-object/from16 v31, v0

    .line 696
    .line 697
    move-object/from16 v35, v2

    .line 698
    .line 699
    move-object/from16 v36, v12

    .line 700
    .line 701
    move-object/from16 v0, v29

    .line 702
    .line 703
    move-object/from16 v8, v30

    .line 704
    .line 705
    const/4 v2, 0x0

    .line 706
    :goto_8
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    .line 707
    .line 708
    .line 709
    move-result v10
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 710
    const-string v12, "description"

    .line 711
    .line 712
    const-string v15, "background_url"

    .line 713
    .line 714
    if-ge v2, v10, :cond_14

    .line 715
    .line 716
    move-object/from16 v10, v28

    .line 717
    .line 718
    move-object/from16 v28, v14

    .line 719
    .line 720
    :try_start_5
    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 721
    .line 722
    .line 723
    move-result-object v14

    .line 724
    move-object/from16 v29, v10

    .line 725
    .line 726
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v10

    .line 730
    move-object/from16 v34, v0

    .line 731
    .line 732
    move-object/from16 v30, v8

    .line 733
    .line 734
    move-object/from16 v8, v36

    .line 735
    .line 736
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    move-object/from16 v36, v11

    .line 741
    .line 742
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v11

    .line 746
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v15

    .line 750
    move-object/from16 v37, v8

    .line 751
    .line 752
    move-object/from16 v8, v35

    .line 753
    .line 754
    move-object/from16 v35, v5

    .line 755
    .line 756
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v5

    .line 760
    move-object/from16 v38, v8

    .line 761
    .line 762
    move-object/from16 v8, v27

    .line 763
    .line 764
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 765
    .line 766
    .line 767
    move/from16 v27, v2

    .line 768
    .line 769
    new-instance v2, Ljava/util/HashMap;

    .line 770
    .line 771
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 772
    .line 773
    .line 774
    move-object/from16 v39, v8

    .line 775
    .line 776
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v8

    .line 780
    invoke-virtual {v2, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v2, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    const-string v8, "series_id"

    .line 787
    .line 788
    invoke-virtual {v2, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    const-string v8, "cover"

    .line 792
    .line 793
    invoke-virtual {v2, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    const-string v5, "plot"

    .line 797
    .line 798
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v8

    .line 802
    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    const-string v5, "backdrop_path"

    .line 806
    .line 807
    invoke-virtual {v2, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 811
    .line 812
    .line 813
    move-result v5
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 814
    if-lez v5, :cond_c

    .line 815
    .line 816
    const/4 v8, 0x0

    .line 817
    :try_start_6
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    new-instance v5, Ljava/util/HashMap;

    .line 822
    .line 823
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    invoke-virtual {v5, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-object/from16 v10, v23

    .line 836
    .line 837
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result v12

    .line 841
    if-nez v12, :cond_b

    .line 842
    .line 843
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    :cond_b
    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 847
    .line 848
    .line 849
    goto :goto_9

    .line 850
    :cond_c
    move-object/from16 v10, v23

    .line 851
    .line 852
    const/4 v8, 0x0

    .line 853
    :try_start_7
    new-instance v0, Ljava/util/HashMap;

    .line 854
    .line 855
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    move-result v5
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    .line 871
    if-nez v5, :cond_d

    .line 872
    .line 873
    :try_start_8
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 874
    .line 875
    .line 876
    :cond_d
    :try_start_9
    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    :goto_9
    const-string v0, "genres"

    .line 880
    .line 881
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    const-string v5, "directors"

    .line 886
    .line 887
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 888
    .line 889
    .line 890
    move-result-object v5

    .line 891
    const-string v12, "cast"

    .line 892
    .line 893
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 894
    .line 895
    .line 896
    move-result-object v12

    .line 897
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 898
    .line 899
    .line 900
    move-result v15
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    .line 901
    const-string v8, ", "

    .line 902
    .line 903
    move-object/from16 v23, v1

    .line 904
    .line 905
    move-object/from16 v40, v3

    .line 906
    .line 907
    move-object/from16 v1, v28

    .line 908
    .line 909
    if-lez v15, :cond_f

    .line 910
    .line 911
    const/4 v15, 0x0

    .line 912
    :goto_a
    :try_start_a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 913
    .line 914
    .line 915
    move-result v3

    .line 916
    if-ge v15, v3, :cond_f

    .line 917
    .line 918
    if-nez v15, :cond_e

    .line 919
    .line 920
    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v1

    .line 924
    goto :goto_b

    .line 925
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 926
    .line 927
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 928
    .line 929
    .line 930
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v1
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    .line 947
    :goto_b
    add-int/lit8 v15, v15, 0x1

    .line 948
    .line 949
    goto :goto_a

    .line 950
    :cond_f
    :try_start_b
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 951
    .line 952
    .line 953
    move-result v0
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2

    .line 954
    move-object/from16 v3, v28

    .line 955
    .line 956
    if-lez v0, :cond_11

    .line 957
    .line 958
    const/4 v0, 0x0

    .line 959
    :goto_c
    :try_start_c
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 960
    .line 961
    .line 962
    move-result v15

    .line 963
    if-ge v0, v15, :cond_11

    .line 964
    .line 965
    if-nez v0, :cond_10

    .line 966
    .line 967
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v3

    .line 971
    goto :goto_d

    .line 972
    :cond_10
    new-instance v15, Ljava/lang/StringBuilder;

    .line 973
    .line 974
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 975
    .line 976
    .line 977
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v3

    .line 987
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v3
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    .line 994
    :goto_d
    add-int/lit8 v0, v0, 0x1

    .line 995
    .line 996
    goto :goto_c

    .line 997
    :cond_11
    :try_start_d
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    .line 998
    .line 999
    .line 1000
    move-result v0
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_2

    .line 1001
    move-object/from16 v5, v28

    .line 1002
    .line 1003
    if-lez v0, :cond_13

    .line 1004
    .line 1005
    const/4 v0, 0x0

    .line 1006
    :goto_e
    :try_start_e
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    .line 1007
    .line 1008
    .line 1009
    move-result v15

    .line 1010
    if-ge v0, v15, :cond_13

    .line 1011
    .line 1012
    if-nez v0, :cond_12

    .line 1013
    .line 1014
    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v5

    .line 1018
    goto :goto_f

    .line 1019
    :cond_12
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v5

    .line 1034
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v5
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0

    .line 1041
    :goto_f
    add-int/lit8 v0, v0, 0x1

    .line 1042
    .line 1043
    goto :goto_e

    .line 1044
    :cond_13
    :try_start_f
    const-string v0, "genre"

    .line 1045
    .line 1046
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    const-string v0, "director"

    .line 1050
    .line 1051
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    const-string v0, "casting"

    .line 1055
    .line 1056
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    .line 1058
    .line 1059
    const-string v0, "rating"

    .line 1060
    .line 1061
    const-string v1, "user_score"

    .line 1062
    .line 1063
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v1

    .line 1067
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    const-string v0, "episode_run_time"

    .line 1071
    .line 1072
    move-object/from16 v1, v39

    .line 1073
    .line 1074
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v3

    .line 1078
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    .line 1080
    .line 1081
    const-string v0, "releaseDate"

    .line 1082
    .line 1083
    const-string v3, "prime_date"

    .line 1084
    .line 1085
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v3

    .line 1089
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    move-object/from16 v0, v21

    .line 1093
    .line 1094
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    .line 1096
    .line 1097
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1100
    .line 1101
    .line 1102
    const-string v3, "display_name-------"

    .line 1103
    .line 1104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v2
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_2

    .line 1114
    move-object/from16 v3, v22

    .line 1115
    .line 1116
    :try_start_10
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    .line 1118
    .line 1119
    add-int/lit8 v2, v27, 0x1

    .line 1120
    .line 1121
    move-object/from16 v21, v0

    .line 1122
    .line 1123
    move-object/from16 v27, v1

    .line 1124
    .line 1125
    move-object/from16 v22, v3

    .line 1126
    .line 1127
    move-object/from16 v1, v23

    .line 1128
    .line 1129
    move-object/from16 v14, v28

    .line 1130
    .line 1131
    move-object/from16 v28, v29

    .line 1132
    .line 1133
    move-object/from16 v8, v30

    .line 1134
    .line 1135
    move-object/from16 v0, v34

    .line 1136
    .line 1137
    move-object/from16 v5, v35

    .line 1138
    .line 1139
    move-object/from16 v11, v36

    .line 1140
    .line 1141
    move-object/from16 v36, v37

    .line 1142
    .line 1143
    move-object/from16 v35, v38

    .line 1144
    .line 1145
    move-object/from16 v3, v40

    .line 1146
    .line 1147
    move-object/from16 v23, v10

    .line 1148
    .line 1149
    goto/16 :goto_8

    .line 1150
    .line 1151
    :catch_1
    move-exception v0

    .line 1152
    :goto_10
    move-object/from16 v1, p0

    .line 1153
    .line 1154
    goto/16 :goto_13

    .line 1155
    .line 1156
    :catch_2
    move-exception v0

    .line 1157
    move-object/from16 v3, v22

    .line 1158
    .line 1159
    goto :goto_10

    .line 1160
    :cond_14
    move-object/from16 v34, v0

    .line 1161
    .line 1162
    move-object/from16 v30, v8

    .line 1163
    .line 1164
    move-object/from16 v0, v21

    .line 1165
    .line 1166
    move-object/from16 v3, v22

    .line 1167
    .line 1168
    move-object/from16 v10, v23

    .line 1169
    .line 1170
    move-object/from16 v1, v27

    .line 1171
    .line 1172
    move-object/from16 v38, v35

    .line 1173
    .line 1174
    move-object/from16 v37, v36

    .line 1175
    .line 1176
    move-object/from16 v35, v5

    .line 1177
    .line 1178
    move-object/from16 v36, v11

    .line 1179
    .line 1180
    const/4 v8, 0x0

    .line 1181
    :goto_11
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    .line 1182
    .line 1183
    .line 1184
    move-result v2
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1

    .line 1185
    const-string v5, "pid"

    .line 1186
    .line 1187
    const-string v6, "created_date"

    .line 1188
    .line 1189
    const-string v7, "view_count"

    .line 1190
    .line 1191
    if-ge v8, v2, :cond_15

    .line 1192
    .line 1193
    move-object/from16 v2, v26

    .line 1194
    .line 1195
    :try_start_11
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v9

    .line 1199
    new-instance v11, Ljava/util/HashMap;

    .line 1200
    .line 1201
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1202
    .line 1203
    .line 1204
    move-object/from16 v13, v35

    .line 1205
    .line 1206
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v14

    .line 1210
    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v14

    .line 1217
    invoke-virtual {v11, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v14

    .line 1224
    invoke-virtual {v11, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    .line 1226
    .line 1227
    move-object/from16 v27, v1

    .line 1228
    .line 1229
    move-object/from16 v14, v38

    .line 1230
    .line 1231
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v1

    .line 1235
    invoke-virtual {v11, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    .line 1237
    .line 1238
    move-object/from16 v26, v2

    .line 1239
    .line 1240
    move-object/from16 v1, v37

    .line 1241
    .line 1242
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v2

    .line 1246
    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v2

    .line 1253
    invoke-virtual {v11, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    const-string v2, "season"

    .line 1257
    .line 1258
    move-object/from16 v21, v4

    .line 1259
    .line 1260
    const-string v4, "season"

    .line 1261
    .line 1262
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v4

    .line 1266
    invoke-virtual {v11, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    .line 1268
    .line 1269
    move-object/from16 v2, v25

    .line 1270
    .line 1271
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v4

    .line 1275
    invoke-virtual {v11, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v4

    .line 1282
    invoke-virtual {v11, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v4

    .line 1289
    invoke-virtual {v11, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v4

    .line 1296
    invoke-virtual {v11, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    .line 1298
    .line 1299
    move-object/from16 v4, v20

    .line 1300
    .line 1301
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    .line 1303
    .line 1304
    add-int/lit8 v8, v8, 0x1

    .line 1305
    .line 1306
    move-object/from16 v37, v1

    .line 1307
    .line 1308
    move-object/from16 v25, v2

    .line 1309
    .line 1310
    move-object/from16 v20, v4

    .line 1311
    .line 1312
    move-object/from16 v35, v13

    .line 1313
    .line 1314
    move-object/from16 v38, v14

    .line 1315
    .line 1316
    move-object/from16 v4, v21

    .line 1317
    .line 1318
    move-object/from16 v1, v27

    .line 1319
    .line 1320
    goto/16 :goto_11

    .line 1321
    .line 1322
    :cond_15
    move-object/from16 v27, v1

    .line 1323
    .line 1324
    move-object/from16 v21, v4

    .line 1325
    .line 1326
    move-object/from16 v4, v20

    .line 1327
    .line 1328
    move-object/from16 v2, v25

    .line 1329
    .line 1330
    move-object/from16 v13, v35

    .line 1331
    .line 1332
    move-object/from16 v1, v37

    .line 1333
    .line 1334
    const/4 v8, 0x0

    .line 1335
    :goto_12
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    .line 1336
    .line 1337
    .line 1338
    move-result v9

    .line 1339
    if-ge v8, v9, :cond_16

    .line 1340
    .line 1341
    move-object/from16 v9, v24

    .line 1342
    .line 1343
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v11

    .line 1347
    new-instance v12, Ljava/util/HashMap;

    .line 1348
    .line 1349
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v14

    .line 1356
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v14

    .line 1363
    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    .line 1365
    .line 1366
    const-string v14, "iarc"

    .line 1367
    .line 1368
    const-string v15, "iarc"

    .line 1369
    .line 1370
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v15

    .line 1374
    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    .line 1376
    .line 1377
    const-string v14, "parts"

    .line 1378
    .line 1379
    const-string v15, "parts"

    .line 1380
    .line 1381
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v15

    .line 1385
    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v14

    .line 1392
    invoke-virtual {v12, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    const-string v14, "meta"

    .line 1396
    .line 1397
    const-string v15, "meta"

    .line 1398
    .line 1399
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v15

    .line 1403
    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v14

    .line 1410
    invoke-virtual {v12, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    .line 1412
    .line 1413
    const-string v14, "video"

    .line 1414
    .line 1415
    const-string v15, "video"

    .line 1416
    .line 1417
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v15

    .line 1421
    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    .line 1423
    .line 1424
    const-string v14, "audio"

    .line 1425
    .line 1426
    const-string v15, "audio"

    .line 1427
    .line 1428
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v15

    .line 1432
    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    const-string v14, "price"

    .line 1436
    .line 1437
    const-string v15, "price"

    .line 1438
    .line 1439
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v15

    .line 1443
    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v14

    .line 1450
    invoke-virtual {v12, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    .line 1452
    .line 1453
    const-string v14, "favorite"

    .line 1454
    .line 1455
    const-string v15, "favorite"

    .line 1456
    .line 1457
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v15

    .line 1461
    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    .line 1463
    .line 1464
    const-string v14, "locked"

    .line 1465
    .line 1466
    const-string v15, "locked"

    .line 1467
    .line 1468
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v15

    .line 1472
    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    .line 1474
    .line 1475
    const-string v14, "recent"

    .line 1476
    .line 1477
    const-string v15, "recent"

    .line 1478
    .line 1479
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v15

    .line 1483
    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    .line 1485
    .line 1486
    const-string v14, "interrupt_time"

    .line 1487
    .line 1488
    const-string v15, "interrupt_time"

    .line 1489
    .line 1490
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v15

    .line 1494
    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    .line 1496
    .line 1497
    move-object/from16 v14, v36

    .line 1498
    .line 1499
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v11

    .line 1503
    invoke-virtual {v12, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    .line 1505
    .line 1506
    move-object/from16 v11, v17

    .line 1507
    .line 1508
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_1

    .line 1509
    .line 1510
    .line 1511
    add-int/lit8 v8, v8, 0x1

    .line 1512
    .line 1513
    move-object/from16 v24, v9

    .line 1514
    .line 1515
    move-object/from16 v17, v11

    .line 1516
    .line 1517
    move-object/from16 v36, v14

    .line 1518
    .line 1519
    goto/16 :goto_12

    .line 1520
    .line 1521
    :cond_16
    move-object/from16 v1, p0

    .line 1522
    .line 1523
    move-object/from16 v11, v17

    .line 1524
    .line 1525
    :try_start_12
    iget-object v5, v1, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->J:Lc7/d;

    .line 1526
    .line 1527
    new-instance v6, Lorg/json/JSONArray;

    .line 1528
    .line 1529
    move-object/from16 v7, v31

    .line 1530
    .line 1531
    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1532
    .line 1533
    .line 1534
    invoke-virtual {v5, v6}, Lc7/d;->k(Lorg/json/JSONArray;)V

    .line 1535
    .line 1536
    .line 1537
    iget-object v5, v1, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->J:Lc7/d;

    .line 1538
    .line 1539
    new-instance v6, Lorg/json/JSONArray;

    .line 1540
    .line 1541
    move-object/from16 v8, v34

    .line 1542
    .line 1543
    invoke-direct {v6, v8}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1544
    .line 1545
    .line 1546
    invoke-virtual {v5, v6}, Lc7/d;->b0(Lorg/json/JSONArray;)V

    .line 1547
    .line 1548
    .line 1549
    iget-object v5, v1, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->J:Lc7/d;

    .line 1550
    .line 1551
    new-instance v6, Lorg/json/JSONArray;

    .line 1552
    .line 1553
    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1554
    .line 1555
    .line 1556
    invoke-virtual {v5, v6}, Lc7/d;->N(Lorg/json/JSONArray;)V

    .line 1557
    .line 1558
    .line 1559
    iget-object v5, v1, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->K:Lc7/a;

    .line 1560
    .line 1561
    new-instance v6, Lorg/json/JSONArray;

    .line 1562
    .line 1563
    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v5, v6}, Lc7/a;->N(Lorg/json/JSONArray;)V

    .line 1567
    .line 1568
    .line 1569
    iget-object v5, v1, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->K:Lc7/a;

    .line 1570
    .line 1571
    new-instance v6, Lorg/json/JSONArray;

    .line 1572
    .line 1573
    invoke-direct {v6, v11}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1574
    .line 1575
    .line 1576
    invoke-virtual {v5, v6}, Lc7/a;->k(Lorg/json/JSONArray;)V

    .line 1577
    .line 1578
    .line 1579
    add-int/lit8 v15, v19, 0x1

    .line 1580
    .line 1581
    move-object v9, v4

    .line 1582
    move-object v6, v7

    .line 1583
    move-object v7, v8

    .line 1584
    move-object/from16 v17, v11

    .line 1585
    .line 1586
    move-object v5, v13

    .line 1587
    move-object/from16 v1, v18

    .line 1588
    .line 1589
    move-object/from16 v4, v21

    .line 1590
    .line 1591
    move-object/from16 v12, v30

    .line 1592
    .line 1593
    move-object/from16 v14, v32

    .line 1594
    .line 1595
    move-object/from16 v11, v33

    .line 1596
    .line 1597
    move-object v8, v0

    .line 1598
    move-object v0, v2

    .line 1599
    move-object v13, v10

    .line 1600
    move-object/from16 v2, v27

    .line 1601
    .line 1602
    goto/16 :goto_0

    .line 1603
    .line 1604
    :catch_3
    move-exception v0

    .line 1605
    goto :goto_13

    .line 1606
    :cond_17
    move-object/from16 v1, p0

    .line 1607
    .line 1608
    move-object/from16 v33, v11

    .line 1609
    .line 1610
    move-object/from16 v30, v12

    .line 1611
    .line 1612
    move-object v10, v13

    .line 1613
    move-object/from16 v32, v14

    .line 1614
    .line 1615
    iget-object v0, v1, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->J:Lc7/d;

    .line 1616
    .line 1617
    new-instance v2, Lorg/json/JSONArray;

    .line 1618
    .line 1619
    move-object/from16 v4, v33

    .line 1620
    .line 1621
    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v0, v2}, Lc7/d;->a0(Lorg/json/JSONArray;)V

    .line 1625
    .line 1626
    .line 1627
    iget-object v0, v1, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->J:Lc7/d;

    .line 1628
    .line 1629
    new-instance v2, Lorg/json/JSONArray;

    .line 1630
    .line 1631
    move-object/from16 v4, v30

    .line 1632
    .line 1633
    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual {v0, v2}, Lc7/d;->c0(Lorg/json/JSONArray;)V

    .line 1637
    .line 1638
    .line 1639
    iget-object v0, v1, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->J:Lc7/d;

    .line 1640
    .line 1641
    new-instance v2, Lorg/json/JSONArray;

    .line 1642
    .line 1643
    invoke-direct {v2, v10}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1644
    .line 1645
    .line 1646
    invoke-virtual {v0, v2}, Lc7/d;->O(Lorg/json/JSONArray;)V

    .line 1647
    .line 1648
    .line 1649
    iget-object v0, v1, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->L:Lr0/b;

    .line 1650
    .line 1651
    move-object/from16 v2, v32

    .line 1652
    .line 1653
    invoke-virtual {v0, v2}, Lr0/b;->E(Lorg/json/JSONArray;)V

    .line 1654
    .line 1655
    .line 1656
    invoke-virtual/range {p0 .. p0}, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->a()V

    .line 1657
    .line 1658
    .line 1659
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_3

    .line 1660
    .line 1661
    .line 1662
    goto :goto_14

    .line 1663
    :goto_13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v0

    .line 1667
    const-string v2, "OTRUpdateContents -processClientContent JSONException - "

    .line 1668
    .line 1669
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v0

    .line 1673
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    .line 1675
    .line 1676
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 1677
    .line 1678
    .line 1679
    :goto_14
    return-void
.end method

.method public final d()V
    .locals 10

    .line 1
    iget-object v0, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->M:Lh7/i;

    .line 2
    .line 3
    iget-object v0, v0, Lh7/i;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    iget-object v0, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->M:Lh7/i;

    .line 10
    .line 11
    iget-object v0, v0, Lh7/i;->d:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v9

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->M:Lh7/i;

    .line 23
    .line 24
    iget-object v1, v1, Lh7/i;->e:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "/panel_pro/api/client/content"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    new-instance v0, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/i6;

    .line 48
    .line 49
    const-string v5, "clientContent"

    .line 50
    .line 51
    new-instance v7, Lorg/json/JSONObject;

    .line 52
    .line 53
    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    move-object v3, p0

    .line 58
    move-object v4, p0

    .line 59
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/i6;-><init>(ILandroid/app/Activity;Lg7/c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    const-string v0, "XCIPTV_TAG"

    .line 64
    .line 65
    const-string v1, "OTRUpdateContents - OTR Panel Client Devices - VolleyGETStringRequest Error"

    .line 66
    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public final e(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "OTRUpdateContents - onFailureJson - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "XCIPTV_TAG"

    .line 16
    .line 17
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string p2, "renewToken"

    .line 24
    .line 25
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const-string v1, "OTRUpdateContents - clientContent  - VolleyError error"

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const-string v3, "ORT_PROCESS_STATUS"

    .line 33
    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    const-string p2, "clientContent"

    .line 37
    .line 38
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-nez p2, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/16 p2, 0x191

    .line 65
    .line 66
    if-ne p1, p2, :cond_1

    .line 67
    .line 68
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, v2, v3}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->N:Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;

    .line 76
    .line 77
    invoke-static {p1, p0, p0}, LS3/e;->l(Landroid/app/Activity;Landroid/app/Activity;Lg7/c;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, v2, v3}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, v2, v3}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 119
    .line 120
    .line 121
    :goto_0
    return-void
.end method

.method public final g(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "XCIPTV_TAG"

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "renewToken"

    .line 7
    .line 8
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, "clientContent"

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :try_start_0
    const-string p2, "OTRUpdateContents -- onSuccessJsonFastoGT clientContent"

    .line 24
    .line 25
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "OTRUpdateContents -- onSuccessJsonFastoGT clientContent Exception"

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string p2, "ORT_PROCESS_STATUS"

    .line 48
    .line 49
    const-string v0, "access_token"

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    :try_start_1
    const-string v2, "data"

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    const-string v2, "refresh_token"

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v0, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->H:Landroid/content/SharedPreferences$Editor;

    .line 75
    .line 76
    const-string v3, "otr_refresh_token"

    .line 77
    .line 78
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->H:Landroid/content/SharedPreferences$Editor;

    .line 86
    .line 87
    const-string v2, "otr_access_token"

    .line 88
    .line 89
    invoke-static {p1}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->H:Landroid/content/SharedPreferences$Editor;

    .line 97
    .line 98
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->d()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1, v1, p2}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_1
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1, v1, p2}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 124
    .line 125
    .line 126
    :goto_0
    iget-object p1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->H:Landroid/content/SharedPreferences$Editor;

    .line 127
    .line 128
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 129
    .line 130
    .line 131
    :goto_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->Q:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "yes"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "ORT_PROCESS_STATUS"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e0051

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0b028a

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/ImageView;

    .line 18
    .line 19
    iget-object v0, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->N:Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;

    .line 20
    .line 21
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const v1, 0x7f0805f0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const v1, 0x7f08053b

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const-string p1, "XCIPTV_TAG"

    .line 41
    .line 42
    const-string v1, "OTRUpdateContents -----------Calling OTRUpdateContents---------------"

    .line 43
    .line 44
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const-string v1, "pe.hf.black20"

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 55
    .line 56
    new-instance v1, Lc7/a;

    .line 57
    .line 58
    invoke-direct {v1, v0, v2}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->I:Lc7/a;

    .line 62
    .line 63
    new-instance v1, Lc7/d;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->J:Lc7/d;

    .line 69
    .line 70
    new-instance v1, Lc7/b;

    .line 71
    .line 72
    invoke-direct {v1, v0, v2}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lc7/a;

    .line 76
    .line 77
    const/4 v3, 0x1

    .line 78
    invoke-direct {v1, v0, v3}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->K:Lc7/a;

    .line 82
    .line 83
    new-instance v1, Lr0/b;

    .line 84
    .line 85
    invoke-direct {v1, v0, v3}, Lr0/b;-><init>(Landroid/content/Context;I)V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->L:Lr0/b;

    .line 89
    .line 90
    iget-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->I:Lc7/a;

    .line 91
    .line 92
    const-string v4, "Default (XC)"

    .line 93
    .line 94
    const-string v5, "ORT_PROFILE"

    .line 95
    .line 96
    invoke-static {v5, v4, v1}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->M:Lh7/i;

    .line 101
    .line 102
    iget-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 103
    .line 104
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iput-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->H:Landroid/content/SharedPreferences$Editor;

    .line 109
    .line 110
    const v1, 0x7f0b058a

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Landroid/widget/TextView;

    .line 118
    .line 119
    const v1, 0x7f0b0594

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Landroid/widget/TextView;

    .line 127
    .line 128
    const v1, 0x7f0b056f

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Landroid/widget/TextView;

    .line 136
    .line 137
    const v1, 0x7f0b0537

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Landroid/widget/TextView;

    .line 145
    .line 146
    const v1, 0x7f0b0541

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Landroid/widget/TextView;

    .line 154
    .line 155
    iput-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->P:Landroid/widget/TextView;

    .line 156
    .line 157
    const v4, 0x7f130202

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    const v1, 0x7f0b00b0

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Landroid/widget/Button;

    .line 175
    .line 176
    iput-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->O:Landroid/widget/Button;

    .line 177
    .line 178
    const v1, 0x7f0b03d8

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Landroid/widget/ProgressBar;

    .line 186
    .line 187
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->Q(Landroid/content/ContextWrapper;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_6

    .line 192
    .line 193
    const-string v1, "no"

    .line 194
    .line 195
    iput-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->Q:Ljava/lang/String;

    .line 196
    .line 197
    iget-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->O:Landroid/widget/Button;

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 200
    .line 201
    .line 202
    iget-object v1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->O:Landroid/widget/Button;

    .line 203
    .line 204
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v0}, Lpe/hf/black20/CategoriesActivity;->i(Landroid/content/Context;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_1

    .line 216
    .line 217
    const-string v1, "OTRUpdateContents Background Process is running"

    .line 218
    .line 219
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_1
    const-string v1, "OTRUpdateContents Background Process is no running"

    .line 224
    .line 225
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    :goto_1
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    const-string v4, "ORT_PROCESS_STATUS"

    .line 233
    .line 234
    invoke-virtual {v1, v2, v4}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 235
    .line 236
    .line 237
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    const-string v2, "OTRUpdateContents JobScheduler is not Running"

    .line 242
    .line 243
    const-string v5, "OTRUpdateContents JobScheduler is Running"

    .line 244
    .line 245
    const-string v6, "OTRUpdateContents stopBackgroundTask"

    .line 246
    .line 247
    if-eqz v1, :cond_3

    .line 248
    .line 249
    invoke-static {v0}, Lpe/hf/black20/ORPlayerMainActivity;->w(Landroid/content/Context;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-eqz v1, :cond_2

    .line 254
    .line 255
    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    const-string p1, "jobscheduler"

    .line 262
    .line 263
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    check-cast p1, Landroid/app/job/JobScheduler;

    .line 268
    .line 269
    const/16 v1, 0x7b

    .line 270
    .line 271
    invoke-virtual {p1, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_2
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_3
    invoke-static {v0}, Lpe/hf/black20/CategoriesActivity;->i(Landroid/content/Context;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_4

    .line 287
    .line 288
    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    invoke-static {v0}, Lpe/hf/black20/CategoriesActivity;->m(Landroid/app/Activity;)V

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_4
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    :goto_2
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-virtual {p1, v4}, LQ5/a;->b(Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-nez p1, :cond_5

    .line 313
    .line 314
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {p1, v3, v4}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0}, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->d()V

    .line 322
    .line 323
    .line 324
    goto :goto_3

    .line 325
    :cond_5
    const p1, 0x7f1301a7

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-virtual {p0, p1}, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->b(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_6
    const-string p1, "Please check your internet connection."

    .line 337
    .line 338
    invoke-virtual {p0, p1}, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->b(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iget-object p1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->O:Landroid/widget/Button;

    .line 342
    .line 343
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 344
    .line 345
    .line 346
    iget-object p1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->O:Landroid/widget/Button;

    .line 347
    .line 348
    const v1, 0x7f1301b9

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .line 357
    .line 358
    :goto_3
    iget-object p1, p0, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->O:Landroid/widget/Button;

    .line 359
    .line 360
    new-instance v0, LD1/i;

    .line 361
    .line 362
    const/4 v1, 0x4

    .line 363
    invoke-direct {v0, p0, v1}, LD1/i;-><init>(Ljava/lang/Object;I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    .line 368
    .line 369
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
