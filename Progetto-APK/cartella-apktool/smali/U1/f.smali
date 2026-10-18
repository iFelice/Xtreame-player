.class public LU1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ2/a;
.implements LA2/a;
.implements LB2/b;
.implements Lw2/c;
.implements LC2/s;
.implements LF2/o;
.implements LF2/F;
.implements Ly4/t;
.implements Lc4/C;


# instance fields
.field public final synthetic G:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x1c

    iput v0, p0, LU1/f;->G:I

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, LU1/f;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 3
    iput p1, p0, LU1/f;->G:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LU1/f;->G:I

    return-void
.end method

.method public static f(FFFF)Landroid/graphics/Path;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static h(LD0/U;Landroid/database/sqlite/SQLiteDatabase;)LU1/c;
    .locals 2

    .line 1
    const-string v0, "refHolder"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sqLiteDatabase"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, LU1/c;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, LU1/c;->G:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    .line 19
    invoke-static {v1, p1}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    :cond_0
    new-instance v0, LU1/c;

    .line 26
    .line 27
    invoke-direct {v0, p1}, LU1/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 31
    .line 32
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lw2/i;)Ljava/io/File;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public b(Landroid/graphics/Bitmap;Lz2/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lw2/i;Ly2/k;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Landroid/media/MediaExtractor;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, LU1/f;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    new-instance v0, LF2/E;

    .line 9
    .line 10
    invoke-direct {v0, p2}, LF2/E;-><init>(Ljava/nio/ByteBuffer;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, LF2/D;->p(Landroid/media/MediaExtractor;LF2/E;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    check-cast p2, Landroid/content/res/AssetFileDescriptor;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    move-object v0, p1

    .line 32
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method public g(Landroid/view/View;)F
    .locals 1

    .line 1
    const v0, 0x7f0b0431

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Float;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    div-float/2addr p1, v0

    .line 21
    return p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LU1/f;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ly4/s;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLeft(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p3}, Landroid/view/View;->setTop(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p4}, Landroid/view/View;->setRight(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p5}, Landroid/view/View;->setBottom(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ly2/C;

    .line 2
    .line 3
    invoke-direct {v0}, Ly2/C;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public n(Ljava/lang/Object;Ljava/io/File;Lw2/l;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1, p2}, LP2/c;->d(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    const/4 p2, 0x3

    .line 10
    const-string p3, "ByteBufferEncoder"

    .line 11
    .line 12
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    const-string p2, "Failed to write data"

    .line 19
    .line 20
    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public s(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, LU1/f;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    new-instance v0, LF2/E;

    .line 9
    .line 10
    invoke-direct {v0, p2}, LF2/E;-><init>(Ljava/nio/ByteBuffer;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, LF2/D;->q(Landroid/media/MediaMetadataRetriever;LF2/E;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    check-cast p2, Landroid/content/res/AssetFileDescriptor;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    move-object v0, p1

    .line 32
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method public zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, LU1/f;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/Q3;->H:Lcom/google/android/gms/internal/measurement/Q3;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/Q3;->G:Ly4/w;

    .line 9
    .line 10
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/measurement/R3;

    .line 13
    .line 14
    check-cast v0, Lcom/google/android/gms/internal/measurement/S3;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/measurement/S3;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/N3;->H:Lcom/google/android/gms/internal/measurement/N3;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/N3;->G:Ly4/w;

    .line 34
    .line 35
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lcom/google/android/gms/internal/measurement/O3;

    .line 38
    .line 39
    check-cast v0, Lcom/google/android/gms/internal/measurement/P3;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget-object v0, Lcom/google/android/gms/internal/measurement/P3;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/y3;->H:Lcom/google/android/gms/internal/measurement/y3;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/y3;->G:Ly4/w;

    .line 59
    .line 60
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    .line 63
    .line 64
    check-cast v0, Lcom/google/android/gms/internal/measurement/A3;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    sget-object v0, Lcom/google/android/gms/internal/measurement/A3;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    return-object v0

    .line 81
    :pswitch_2
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 82
    .line 83
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/lang/Long;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    return-object v0

    .line 106
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/y3;->H:Lcom/google/android/gms/internal/measurement/y3;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/y3;->G:Ly4/w;

    .line 109
    .line 110
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    .line 113
    .line 114
    check-cast v0, Lcom/google/android/gms/internal/measurement/A3;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    sget-object v0, Lcom/google/android/gms/internal/measurement/A3;->c:Lcom/google/android/gms/internal/measurement/W1;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/lang/Boolean;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    return-object v0

    .line 131
    :pswitch_4
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 132
    .line 133
    sget-object v0, Lcom/google/android/gms/internal/measurement/o4;->H:Lcom/google/android/gms/internal/measurement/o4;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/o4;->G:Ly4/w;

    .line 136
    .line 137
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v0, Lcom/google/android/gms/internal/measurement/p4;

    .line 140
    .line 141
    check-cast v0, Lcom/google/android/gms/internal/measurement/q4;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    sget-object v0, Lcom/google/android/gms/internal/measurement/q4;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Ljava/lang/Boolean;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    return-object v0

    .line 158
    :pswitch_5
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 159
    .line 160
    sget-object v0, Lcom/google/android/gms/internal/measurement/D4;->H:Lcom/google/android/gms/internal/measurement/D4;

    .line 161
    .line 162
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/D4;->G:Ly4/w;

    .line 163
    .line 164
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Lcom/google/android/gms/internal/measurement/E4;

    .line 167
    .line 168
    check-cast v0, Lcom/google/android/gms/internal/measurement/F4;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    sget-object v0, Lcom/google/android/gms/internal/measurement/F4;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Ljava/lang/Boolean;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    return-object v0

    .line 185
    :pswitch_6
    sget-object v0, Lcom/google/android/gms/internal/measurement/r4;->H:Lcom/google/android/gms/internal/measurement/r4;

    .line 186
    .line 187
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/r4;->G:Ly4/w;

    .line 188
    .line 189
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v0, Lcom/google/android/gms/internal/measurement/s4;

    .line 192
    .line 193
    check-cast v0, Lcom/google/android/gms/internal/measurement/t4;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    sget-object v0, Lcom/google/android/gms/internal/measurement/t4;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Ljava/lang/Boolean;

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    return-object v0

    .line 210
    :pswitch_7
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 211
    .line 212
    sget-object v0, Lcom/google/android/gms/internal/measurement/i4;->H:Lcom/google/android/gms/internal/measurement/i4;

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/i4;->a()Lcom/google/android/gms/internal/measurement/j4;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Lcom/google/android/gms/internal/measurement/k4;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    sget-object v0, Lcom/google/android/gms/internal/measurement/k4;->c:Lcom/google/android/gms/internal/measurement/W1;

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Ljava/lang/Boolean;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    return-object v0

    .line 235
    :pswitch_8
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 236
    .line 237
    sget-object v0, Lcom/google/android/gms/internal/measurement/l4;->H:Lcom/google/android/gms/internal/measurement/l4;

    .line 238
    .line 239
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/l4;->G:Ly4/w;

    .line 240
    .line 241
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v0, Lcom/google/android/gms/internal/measurement/m4;

    .line 244
    .line 245
    check-cast v0, Lcom/google/android/gms/internal/measurement/n4;

    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    sget-object v0, Lcom/google/android/gms/internal/measurement/n4;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Ljava/lang/Boolean;

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    return-object v0

    .line 262
    :pswitch_9
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 263
    .line 264
    sget-object v0, Lcom/google/android/gms/internal/measurement/i4;->H:Lcom/google/android/gms/internal/measurement/i4;

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/i4;->a()Lcom/google/android/gms/internal/measurement/j4;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Lcom/google/android/gms/internal/measurement/k4;

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    sget-object v0, Lcom/google/android/gms/internal/measurement/k4;->d:Lcom/google/android/gms/internal/measurement/W1;

    .line 276
    .line 277
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Ljava/lang/Boolean;

    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    return-object v0

    .line 287
    :pswitch_a
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 288
    .line 289
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    .line 290
    .line 291
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->k0:Lcom/google/android/gms/internal/measurement/W1;

    .line 301
    .line 302
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    check-cast v0, Ljava/lang/Long;

    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 309
    .line 310
    .line 311
    move-result-wide v0

    .line 312
    long-to-int v1, v0

    .line 313
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    return-object v0

    .line 318
    :pswitch_b
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 319
    .line 320
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    .line 321
    .line 322
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->j0:Lcom/google/android/gms/internal/measurement/W1;

    .line 332
    .line 333
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Ljava/lang/Long;

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 340
    .line 341
    .line 342
    move-result-wide v0

    .line 343
    long-to-int v1, v0

    .line 344
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    return-object v0

    .line 349
    :pswitch_c
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 350
    .line 351
    sget-object v0, Lcom/google/android/gms/internal/measurement/i4;->H:Lcom/google/android/gms/internal/measurement/i4;

    .line 352
    .line 353
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/i4;->a()Lcom/google/android/gms/internal/measurement/j4;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    check-cast v0, Lcom/google/android/gms/internal/measurement/k4;

    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    sget-object v0, Lcom/google/android/gms/internal/measurement/k4;->h:Lcom/google/android/gms/internal/measurement/W1;

    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    check-cast v0, Ljava/lang/Boolean;

    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    return-object v0

    .line 374
    :pswitch_d
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 375
    .line 376
    sget-object v0, Lcom/google/android/gms/internal/measurement/i4;->H:Lcom/google/android/gms/internal/measurement/i4;

    .line 377
    .line 378
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/i4;->a()Lcom/google/android/gms/internal/measurement/j4;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Lcom/google/android/gms/internal/measurement/k4;

    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    sget-object v0, Lcom/google/android/gms/internal/measurement/k4;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 388
    .line 389
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    check-cast v0, Ljava/lang/Boolean;

    .line 394
    .line 395
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    return-object v0

    .line 399
    :pswitch_e
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 400
    .line 401
    sget-object v0, Lcom/google/android/gms/internal/measurement/i4;->H:Lcom/google/android/gms/internal/measurement/i4;

    .line 402
    .line 403
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/i4;->a()Lcom/google/android/gms/internal/measurement/j4;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    check-cast v0, Lcom/google/android/gms/internal/measurement/k4;

    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    sget-object v0, Lcom/google/android/gms/internal/measurement/k4;->f:Lcom/google/android/gms/internal/measurement/W1;

    .line 413
    .line 414
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    check-cast v0, Ljava/lang/Boolean;

    .line 419
    .line 420
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    return-object v0

    .line 424
    :pswitch_f
    sget-object v0, Lcom/google/android/gms/internal/measurement/Z3;->H:Lcom/google/android/gms/internal/measurement/Z3;

    .line 425
    .line 426
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/Z3;->G:Ly4/w;

    .line 427
    .line 428
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v0, Lcom/google/android/gms/internal/measurement/a4;

    .line 431
    .line 432
    check-cast v0, Lcom/google/android/gms/internal/measurement/b4;

    .line 433
    .line 434
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    sget-object v0, Lcom/google/android/gms/internal/measurement/b4;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 438
    .line 439
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, Ljava/lang/Boolean;

    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    return-object v0

    .line 449
    :pswitch_10
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 450
    .line 451
    sget-object v0, Lcom/google/android/gms/internal/measurement/j3;->H:Lcom/google/android/gms/internal/measurement/j3;

    .line 452
    .line 453
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/j3;->G:Ly4/w;

    .line 454
    .line 455
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 456
    .line 457
    check-cast v0, Lcom/google/android/gms/internal/measurement/k3;

    .line 458
    .line 459
    check-cast v0, Lcom/google/android/gms/internal/measurement/l3;

    .line 460
    .line 461
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    sget-object v0, Lcom/google/android/gms/internal/measurement/l3;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 465
    .line 466
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    check-cast v0, Ljava/lang/Boolean;

    .line 471
    .line 472
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    return-object v0

    .line 476
    :pswitch_11
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 477
    .line 478
    sget-object v0, Lcom/google/android/gms/internal/measurement/A4;->H:Lcom/google/android/gms/internal/measurement/A4;

    .line 479
    .line 480
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/A4;->a()Lcom/google/android/gms/internal/measurement/B4;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    check-cast v0, Lcom/google/android/gms/internal/measurement/C4;

    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    sget-object v0, Lcom/google/android/gms/internal/measurement/C4;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 490
    .line 491
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    check-cast v0, Ljava/lang/Boolean;

    .line 496
    .line 497
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    return-object v0

    .line 501
    :pswitch_12
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 502
    .line 503
    sget-object v0, Lcom/google/android/gms/internal/measurement/A4;->H:Lcom/google/android/gms/internal/measurement/A4;

    .line 504
    .line 505
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/A4;->a()Lcom/google/android/gms/internal/measurement/B4;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    check-cast v0, Lcom/google/android/gms/internal/measurement/C4;

    .line 510
    .line 511
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    sget-object v0, Lcom/google/android/gms/internal/measurement/C4;->b:Lcom/google/android/gms/internal/measurement/W1;

    .line 515
    .line 516
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    check-cast v0, Ljava/lang/Boolean;

    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    return-object v0

    .line 526
    :pswitch_13
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 527
    .line 528
    sget-object v0, Lcom/google/android/gms/internal/measurement/A4;->H:Lcom/google/android/gms/internal/measurement/A4;

    .line 529
    .line 530
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/A4;->a()Lcom/google/android/gms/internal/measurement/B4;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    check-cast v0, Lcom/google/android/gms/internal/measurement/C4;

    .line 535
    .line 536
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    .line 538
    .line 539
    sget-object v0, Lcom/google/android/gms/internal/measurement/C4;->d:Lcom/google/android/gms/internal/measurement/W1;

    .line 540
    .line 541
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    check-cast v0, Ljava/lang/Boolean;

    .line 546
    .line 547
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 548
    .line 549
    .line 550
    return-object v0

    .line 551
    :pswitch_14
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 552
    .line 553
    sget-object v0, Lcom/google/android/gms/internal/measurement/A4;->H:Lcom/google/android/gms/internal/measurement/A4;

    .line 554
    .line 555
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/A4;->a()Lcom/google/android/gms/internal/measurement/B4;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    check-cast v0, Lcom/google/android/gms/internal/measurement/C4;

    .line 560
    .line 561
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    sget-object v0, Lcom/google/android/gms/internal/measurement/C4;->f:Lcom/google/android/gms/internal/measurement/W1;

    .line 565
    .line 566
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    check-cast v0, Ljava/lang/Boolean;

    .line 571
    .line 572
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    return-object v0

    .line 576
    :pswitch_15
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 577
    .line 578
    sget-object v0, Lcom/google/android/gms/internal/measurement/A4;->H:Lcom/google/android/gms/internal/measurement/A4;

    .line 579
    .line 580
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/A4;->a()Lcom/google/android/gms/internal/measurement/B4;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    check-cast v0, Lcom/google/android/gms/internal/measurement/C4;

    .line 585
    .line 586
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 587
    .line 588
    .line 589
    sget-object v0, Lcom/google/android/gms/internal/measurement/C4;->e:Lcom/google/android/gms/internal/measurement/W1;

    .line 590
    .line 591
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    check-cast v0, Ljava/lang/Boolean;

    .line 596
    .line 597
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    return-object v0

    .line 601
    :pswitch_16
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 602
    .line 603
    sget-object v0, Lcom/google/android/gms/internal/measurement/A4;->H:Lcom/google/android/gms/internal/measurement/A4;

    .line 604
    .line 605
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/A4;->a()Lcom/google/android/gms/internal/measurement/B4;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    check-cast v0, Lcom/google/android/gms/internal/measurement/C4;

    .line 610
    .line 611
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    .line 613
    .line 614
    sget-object v0, Lcom/google/android/gms/internal/measurement/C4;->h:Lcom/google/android/gms/internal/measurement/W1;

    .line 615
    .line 616
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    check-cast v0, Ljava/lang/Boolean;

    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 623
    .line 624
    .line 625
    return-object v0

    .line 626
    :pswitch_17
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 627
    .line 628
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    .line 629
    .line 630
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    .line 635
    .line 636
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    .line 638
    .line 639
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->f0:Lcom/google/android/gms/internal/measurement/W1;

    .line 640
    .line 641
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    check-cast v0, Ljava/lang/Long;

    .line 646
    .line 647
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 648
    .line 649
    .line 650
    move-result-wide v0

    .line 651
    long-to-int v1, v0

    .line 652
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    return-object v0

    .line 657
    :pswitch_18
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 658
    .line 659
    sget-object v0, Lcom/google/android/gms/internal/measurement/A4;->H:Lcom/google/android/gms/internal/measurement/A4;

    .line 660
    .line 661
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/A4;->a()Lcom/google/android/gms/internal/measurement/B4;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    check-cast v0, Lcom/google/android/gms/internal/measurement/C4;

    .line 666
    .line 667
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 668
    .line 669
    .line 670
    sget-object v0, Lcom/google/android/gms/internal/measurement/C4;->c:Lcom/google/android/gms/internal/measurement/W1;

    .line 671
    .line 672
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    check-cast v0, Ljava/lang/Boolean;

    .line 677
    .line 678
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 679
    .line 680
    .line 681
    return-object v0

    .line 682
    :pswitch_19
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 683
    .line 684
    sget-object v0, Lcom/google/android/gms/internal/measurement/A4;->H:Lcom/google/android/gms/internal/measurement/A4;

    .line 685
    .line 686
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/A4;->a()Lcom/google/android/gms/internal/measurement/B4;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    check-cast v0, Lcom/google/android/gms/internal/measurement/C4;

    .line 691
    .line 692
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 693
    .line 694
    .line 695
    sget-object v0, Lcom/google/android/gms/internal/measurement/C4;->g:Lcom/google/android/gms/internal/measurement/W1;

    .line 696
    .line 697
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    check-cast v0, Ljava/lang/Boolean;

    .line 702
    .line 703
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 704
    .line 705
    .line 706
    return-object v0

    .line 707
    :pswitch_1a
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 708
    .line 709
    sget-object v0, Lcom/google/android/gms/internal/measurement/u4;->H:Lcom/google/android/gms/internal/measurement/u4;

    .line 710
    .line 711
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/u4;->G:Ly4/w;

    .line 712
    .line 713
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 714
    .line 715
    check-cast v0, Lcom/google/android/gms/internal/measurement/v4;

    .line 716
    .line 717
    check-cast v0, Lcom/google/android/gms/internal/measurement/w4;

    .line 718
    .line 719
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    .line 721
    .line 722
    sget-object v0, Lcom/google/android/gms/internal/measurement/w4;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 723
    .line 724
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    check-cast v0, Ljava/lang/Boolean;

    .line 729
    .line 730
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 731
    .line 732
    .line 733
    return-object v0

    .line 734
    :pswitch_1b
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 735
    .line 736
    sget-object v0, Lcom/google/android/gms/internal/measurement/p3;->H:Lcom/google/android/gms/internal/measurement/p3;

    .line 737
    .line 738
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/p3;->G:Ly4/w;

    .line 739
    .line 740
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 741
    .line 742
    check-cast v0, Lcom/google/android/gms/internal/measurement/q3;

    .line 743
    .line 744
    check-cast v0, Lcom/google/android/gms/internal/measurement/r3;

    .line 745
    .line 746
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    .line 748
    .line 749
    sget-object v0, Lcom/google/android/gms/internal/measurement/r3;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 750
    .line 751
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    check-cast v0, Ljava/lang/Boolean;

    .line 756
    .line 757
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 758
    .line 759
    .line 760
    return-object v0

    .line 761
    :pswitch_1c
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 762
    .line 763
    sget-object v0, Lcom/google/android/gms/internal/measurement/E3;->H:Lcom/google/android/gms/internal/measurement/E3;

    .line 764
    .line 765
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/E3;->G:Ly4/w;

    .line 766
    .line 767
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 768
    .line 769
    check-cast v0, Lcom/google/android/gms/internal/measurement/F3;

    .line 770
    .line 771
    check-cast v0, Lcom/google/android/gms/internal/measurement/G3;

    .line 772
    .line 773
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 774
    .line 775
    .line 776
    sget-object v0, Lcom/google/android/gms/internal/measurement/G3;->b:Lcom/google/android/gms/internal/measurement/W1;

    .line 777
    .line 778
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    check-cast v0, Ljava/lang/Boolean;

    .line 783
    .line 784
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 785
    .line 786
    .line 787
    return-object v0

    .line 788
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
