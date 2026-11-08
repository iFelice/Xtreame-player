.class public final Le0/C;
.super LD6/h;
.source "SourceFile"

# interfaces
.implements LC6/a;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Le0/C;->G:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/C;->H:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, LD6/h;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Le0/C;->G:I

    .line 4
    .line 5
    iget-object v2, v0, Le0/C;->H:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v3, 0x17

    .line 13
    .line 14
    const/16 v4, 0xf

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    if-lt v1, v3, :cond_0

    .line 18
    .line 19
    move-object v1, v2

    .line 20
    check-cast v1, LU1/h;

    .line 21
    .line 22
    iget-object v3, v1, LU1/h;->H:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-boolean v3, v1, LU1/h;->J:Z

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    new-instance v3, Ljava/io/File;

    .line 31
    .line 32
    iget-object v6, v1, LU1/h;->G:Landroid/content/Context;

    .line 33
    .line 34
    const-string v7, "context"

    .line 35
    .line 36
    invoke-static {v6, v7}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const-string v7, "context.noBackupFilesDir"

    .line 44
    .line 45
    invoke-static {v6, v7}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v7, v1, LU1/h;->H:Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v6, LU1/g;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    new-instance v11, LD0/U;

    .line 60
    .line 61
    invoke-direct {v11, v5, v4}, LD0/U;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    iget-object v12, v1, LU1/h;->I:LT1/c;

    .line 65
    .line 66
    iget-boolean v13, v1, LU1/h;->K:Z

    .line 67
    .line 68
    iget-object v9, v1, LU1/h;->G:Landroid/content/Context;

    .line 69
    .line 70
    move-object v8, v6

    .line 71
    invoke-direct/range {v8 .. v13}, LU1/g;-><init>(Landroid/content/Context;Ljava/lang/String;LD0/U;LT1/c;Z)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    new-instance v6, LU1/g;

    .line 76
    .line 77
    move-object v1, v2

    .line 78
    check-cast v1, LU1/h;

    .line 79
    .line 80
    iget-object v15, v1, LU1/h;->G:Landroid/content/Context;

    .line 81
    .line 82
    new-instance v3, LD0/U;

    .line 83
    .line 84
    invoke-direct {v3, v5, v4}, LD0/U;-><init>(Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    iget-object v4, v1, LU1/h;->I:LT1/c;

    .line 88
    .line 89
    iget-boolean v5, v1, LU1/h;->K:Z

    .line 90
    .line 91
    iget-object v1, v1, LU1/h;->H:Ljava/lang/String;

    .line 92
    .line 93
    move-object v14, v6

    .line 94
    move-object/from16 v16, v1

    .line 95
    .line 96
    move-object/from16 v17, v3

    .line 97
    .line 98
    move-object/from16 v18, v4

    .line 99
    .line 100
    move/from16 v19, v5

    .line 101
    .line 102
    invoke-direct/range {v14 .. v19}, LU1/g;-><init>(Landroid/content/Context;Ljava/lang/String;LD0/U;LT1/c;Z)V

    .line 103
    .line 104
    .line 105
    :goto_0
    check-cast v2, LU1/h;

    .line 106
    .line 107
    iget-boolean v1, v2, LU1/h;->M:Z

    .line 108
    .line 109
    invoke-virtual {v6, v1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 110
    .line 111
    .line 112
    return-object v6

    .line 113
    :pswitch_0
    check-cast v2, Lk/d;

    .line 114
    .line 115
    invoke-virtual {v2}, Lk/d;->d()LT1/i;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    return-object v1

    .line 120
    :pswitch_1
    check-cast v2, Le0/L;

    .line 121
    .line 122
    const-string v1, "<this>"

    .line 123
    .line 124
    invoke-static {v2, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v1, LF2/G;

    .line 128
    .line 129
    const/4 v3, 0x1

    .line 130
    invoke-direct {v1, v3}, LF2/G;-><init>(I)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v2}, Le0/L;->c()Le0/K;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    instance-of v4, v2, Le0/f;

    .line 138
    .line 139
    if-eqz v4, :cond_1

    .line 140
    .line 141
    check-cast v2, Le0/f;

    .line 142
    .line 143
    invoke-interface {v2}, Le0/f;->a()Lf0/c;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    goto :goto_1

    .line 148
    :cond_1
    sget-object v2, Lf0/a;->b:Lf0/a;

    .line 149
    .line 150
    :goto_1
    const-string v4, "store"

    .line 151
    .line 152
    invoke-static {v3, v4}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v4, "defaultCreationExtras"

    .line 156
    .line 157
    invoke-static {v2, v4}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance v4, Lm2/u;

    .line 161
    .line 162
    invoke-direct {v4, v3, v1, v2}, Lm2/u;-><init>(Le0/K;LF2/G;Lf0/b;)V

    .line 163
    .line 164
    .line 165
    const-class v1, Le0/E;

    .line 166
    .line 167
    invoke-static {v1}, LD6/l;->a(Ljava/lang/Class;)LD6/c;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesVM"

    .line 172
    .line 173
    invoke-virtual {v4, v1, v2}, Lm2/u;->D(LD6/c;Ljava/lang/String;)Le0/G;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Le0/E;

    .line 178
    .line 179
    return-object v1

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
