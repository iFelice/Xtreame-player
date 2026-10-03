.class public abstract LY/v;
.super La/m;
.source "SourceFile"

# interfaces
.implements LD/a;
.implements LD/b;


# static fields
.field public static final synthetic c0:I


# instance fields
.field public final X:Lf/S;

.field public final Y:Le0/o;

.field public Z:Z

.field public a0:Z

.field public b0:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, La/m;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LY/u;

    .line 5
    .line 6
    move-object v1, p0

    .line 7
    check-cast v1, Lf/o;

    .line 8
    .line 9
    invoke-direct {v0, v1}, LY/u;-><init>(Lf/o;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lf/S;

    .line 13
    .line 14
    const/16 v3, 0x12

    .line 15
    .line 16
    invoke-direct {v2, v0, v3}, Lf/S;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, LY/v;->X:Lf/S;

    .line 20
    .line 21
    new-instance v0, Le0/o;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Le0/o;-><init>(Le0/m;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, LY/v;->Y:Le0/o;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, LY/v;->b0:Z

    .line 30
    .line 31
    iget-object v2, p0, La/m;->K:LS1/f;

    .line 32
    .line 33
    iget-object v2, v2, LS1/f;->b:LS1/e;

    .line 34
    .line 35
    new-instance v3, La/d;

    .line 36
    .line 37
    invoke-direct {v3, p0, v0}, La/d;-><init>(Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    const-string v4, "android:support:lifecycle"

    .line 41
    .line 42
    invoke-virtual {v2, v4, v3}, LS1/e;->c(Ljava/lang/String;LS1/d;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, LY/t;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-direct {v2, v1, v3}, LY/t;-><init>(Lf/o;I)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, La/m;->Q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    new-instance v2, LY/t;

    .line 57
    .line 58
    invoke-direct {v2, v1, v0}, LY/t;-><init>(Lf/o;I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, La/m;->S:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    new-instance v1, La/e;

    .line 67
    .line 68
    invoke-direct {v1, p0, v0}, La/e;-><init>(LY/v;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1}, La/m;->i(Lb/a;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static o(LY/K;)Z
    .locals 5

    .line 1
    iget-object p0, p0, LY/K;->c:Lm2/o;

    .line 2
    .line 3
    invoke-virtual {p0}, Lm2/o;->o()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_5

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, LY/s;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v2, v1, LY/s;->Z:LY/u;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object v2, v2, LY/u;->Q:LY/v;

    .line 34
    .line 35
    :goto_1
    if-eqz v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, LY/s;->k()LY/K;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, LY/v;->o(LY/K;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    or-int/2addr v0, v2

    .line 46
    :cond_3
    iget-object v2, v1, LY/s;->v0:LY/a0;

    .line 47
    .line 48
    sget-object v3, Le0/j;->J:Le0/j;

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    invoke-virtual {v2}, LY/a0;->e()V

    .line 54
    .line 55
    .line 56
    iget-object v2, v2, LY/a0;->I:Le0/o;

    .line 57
    .line 58
    iget-object v2, v2, Le0/o;->L:Le0/j;

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ltz v2, :cond_4

    .line 65
    .line 66
    iget-object v0, v1, LY/s;->v0:LY/a0;

    .line 67
    .line 68
    iget-object v0, v0, LY/a0;->I:Le0/o;

    .line 69
    .line 70
    invoke-virtual {v0}, Le0/o;->h()V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    :cond_4
    iget-object v2, v1, LY/s;->u0:Le0/o;

    .line 75
    .line 76
    iget-object v2, v2, Le0/o;->L:Le0/j;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-ltz v2, :cond_0

    .line 83
    .line 84
    iget-object v0, v1, LY/s;->u0:Le0/o;

    .line 85
    .line 86
    invoke-virtual {v0}, Le0/o;->h()V

    .line 87
    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    return v0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p4, :cond_5

    .line 7
    .line 8
    array-length v2, p4

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    aget-object v2, p4, v0

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    sparse-switch v3, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :sswitch_0
    const-string v3, "--autofill"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v3, 0x1a

    .line 34
    .line 35
    if-lt v2, v3, :cond_5

    .line 36
    .line 37
    :goto_0
    const/4 v2, 0x1

    .line 38
    goto :goto_2

    .line 39
    :sswitch_1
    const-string v3, "--contentcapture"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    .line 50
    const/16 v3, 0x1d

    .line 51
    .line 52
    if-lt v2, v3, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :sswitch_2
    const-string v3, "--list-dumpables"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :sswitch_3
    const-string v3, "--dump-dumpable"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 74
    .line 75
    const/16 v3, 0x21

    .line 76
    .line 77
    if-lt v2, v3, :cond_5

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :sswitch_4
    const-string v3, "--translation"

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_4

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    .line 91
    const/16 v3, 0x1f

    .line 92
    .line 93
    if-lt v2, v3, :cond_5

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    :goto_1
    const/4 v2, 0x0

    .line 97
    :goto_2
    xor-int/2addr v1, v2

    .line 98
    if-nez v1, :cond_6

    .line 99
    .line 100
    return-void

    .line 101
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v1, "Local FragmentActivity "

    .line 105
    .line 106
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v1, " State:"

    .line 121
    .line 122
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v2, "  "

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v2, "mCreated="

    .line 146
    .line 147
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-boolean v2, p0, LY/v;->Z:Z

    .line 151
    .line 152
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 153
    .line 154
    .line 155
    const-string v2, " mResumed="

    .line 156
    .line 157
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-boolean v2, p0, LY/v;->a0:Z

    .line 161
    .line 162
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 163
    .line 164
    .line 165
    const-string v2, " mStopped="

    .line 166
    .line 167
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-boolean v2, p0, LY/v;->b0:Z

    .line 171
    .line 172
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    if-eqz v2, :cond_8

    .line 180
    .line 181
    invoke-interface {p0}, Le0/L;->c()Le0/K;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    new-instance v3, Le0/J;

    .line 186
    .line 187
    sget-object v4, Lh0/a;->c:LF2/G;

    .line 188
    .line 189
    invoke-direct {v3, v2, v4}, Le0/J;-><init>(Le0/K;LF2/G;)V

    .line 190
    .line 191
    .line 192
    const-class v2, Lh0/a;

    .line 193
    .line 194
    invoke-virtual {v3, v2}, Le0/J;->a(Ljava/lang/Class;)Le0/G;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Lh0/a;

    .line 199
    .line 200
    iget-object v2, v2, Lh0/a;->b:Lr/n;

    .line 201
    .line 202
    iget v3, v2, Lr/n;->I:I

    .line 203
    .line 204
    if-lez v3, :cond_8

    .line 205
    .line 206
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string v3, "Loaders:"

    .line 210
    .line 211
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget v3, v2, Lr/n;->I:I

    .line 215
    .line 216
    if-gtz v3, :cond_7

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_7
    iget-object p1, v2, Lr/n;->H:[Ljava/lang/Object;

    .line 220
    .line 221
    aget-object p1, p1, v0

    .line 222
    .line 223
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string p1, "  #"

    .line 230
    .line 231
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, v2, Lr/n;->G:[I

    .line 235
    .line 236
    aget p1, p1, v0

    .line 237
    .line 238
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 239
    .line 240
    .line 241
    const-string p1, ": "

    .line 242
    .line 243
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const/4 p1, 0x0

    .line 247
    throw p1

    .line 248
    :cond_8
    :goto_3
    iget-object v0, p0, LY/v;->X:Lf/S;

    .line 249
    .line 250
    invoke-virtual {v0}, Lf/S;->R()LY/K;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v0, p1, p2, p3, p4}, LY/K;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    nop

    .line 259
    :sswitch_data_0
    .sparse-switch
        -0x2673d6ef -> :sswitch_4
        0x5fd0f67 -> :sswitch_3
        0x1c2b8816 -> :sswitch_2
        0x4519f64d -> :sswitch_1
        0x56b9c952 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, LY/v;->X:Lf/S;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf/S;->S()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, La/m;->onActivityResult(IILandroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, La/m;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LY/v;->Y:Le0/o;

    .line 5
    .line 6
    sget-object v0, Le0/i;->ON_CREATE:Le0/i;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Le0/o;->f(Le0/i;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, LY/v;->X:Lf/S;

    .line 12
    .line 13
    iget-object p1, p1, Lf/S;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, LY/u;

    .line 16
    .line 17
    iget-object p1, p1, LY/u;->P:LY/K;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p1, LY/K;->F:Z

    .line 21
    .line 22
    iput-boolean v0, p1, LY/K;->G:Z

    .line 23
    .line 24
    iget-object v1, p1, LY/K;->M:LY/M;

    .line 25
    .line 26
    iput-boolean v0, v1, LY/M;->g:Z

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, LY/K;->t(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LY/v;->X:Lf/S;

    .line 2
    iget-object v0, v0, Lf/S;->H:Ljava/lang/Object;

    .line 3
    check-cast v0, LY/u;

    iget-object v0, v0, LY/u;->P:LY/K;

    iget-object v0, v0, LY/K;->f:LY/A;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, LY/A;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 6
    iget-object v0, p0, LY/v;->X:Lf/S;

    .line 7
    iget-object v0, v0, Lf/S;->H:Ljava/lang/Object;

    .line 8
    check-cast v0, LY/u;

    iget-object v0, v0, LY/u;->P:LY/K;

    iget-object v0, v0, LY/K;->f:LY/A;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, p1, p2, p3}, LY/A;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LY/v;->X:Lf/S;

    .line 5
    .line 6
    iget-object v0, v0, Lf/S;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LY/u;

    .line 9
    .line 10
    iget-object v0, v0, LY/u;->P:LY/K;

    .line 11
    .line 12
    invoke-virtual {v0}, LY/K;->k()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, LY/v;->Y:Le0/o;

    .line 16
    .line 17
    sget-object v1, Le0/i;->ON_DESTROY:Le0/i;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Le0/o;->f(Le0/i;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, La/m;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p2, 0x6

    .line 10
    if-ne p1, p2, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, LY/v;->X:Lf/S;

    .line 13
    .line 14
    iget-object p1, p1, Lf/S;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, LY/u;

    .line 17
    .line 18
    iget-object p1, p1, LY/u;->P:LY/K;

    .line 19
    .line 20
    invoke-virtual {p1}, LY/K;->i()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, LY/v;->a0:Z

    .line 6
    .line 7
    iget-object v0, p0, LY/v;->X:Lf/S;

    .line 8
    .line 9
    iget-object v0, v0, Lf/S;->H:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, LY/u;

    .line 12
    .line 13
    iget-object v0, v0, LY/u;->P:LY/K;

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    invoke-virtual {v0, v1}, LY/K;->t(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, LY/v;->Y:Le0/o;

    .line 20
    .line 21
    sget-object v1, Le0/i;->ON_PAUSE:Le0/i;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Le0/o;->f(Le0/i;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onPostResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LY/v;->Y:Le0/o;

    .line 5
    .line 6
    sget-object v1, Le0/i;->ON_RESUME:Le0/i;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Le0/o;->f(Le0/i;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LY/v;->X:Lf/S;

    .line 12
    .line 13
    iget-object v0, v0, Lf/S;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, LY/u;

    .line 16
    .line 17
    iget-object v0, v0, LY/u;->P:LY/K;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, LY/K;->F:Z

    .line 21
    .line 22
    iput-boolean v1, v0, LY/K;->G:Z

    .line 23
    .line 24
    iget-object v2, v0, LY/K;->M:LY/M;

    .line 25
    .line 26
    iput-boolean v1, v2, LY/M;->g:Z

    .line 27
    .line 28
    const/4 v1, 0x7

    .line 29
    invoke-virtual {v0, v1}, LY/K;->t(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, LY/v;->X:Lf/S;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf/S;->S()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, La/m;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, LY/v;->X:Lf/S;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf/S;->S()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, LY/v;->a0:Z

    .line 11
    .line 12
    iget-object v0, v0, Lf/S;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, LY/u;

    .line 15
    .line 16
    iget-object v0, v0, LY/u;->P:LY/K;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, LY/K;->x(Z)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1
    iget-object v0, p0, LY/v;->X:Lf/S;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf/S;->S()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, LY/v;->b0:Z

    .line 11
    .line 12
    iget-boolean v2, p0, LY/v;->Z:Z

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iput-boolean v3, p0, LY/v;->Z:Z

    .line 18
    .line 19
    iget-object v2, v0, Lf/S;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, LY/u;

    .line 22
    .line 23
    iget-object v2, v2, LY/u;->P:LY/K;

    .line 24
    .line 25
    iput-boolean v1, v2, LY/K;->F:Z

    .line 26
    .line 27
    iput-boolean v1, v2, LY/K;->G:Z

    .line 28
    .line 29
    iget-object v4, v2, LY/K;->M:LY/M;

    .line 30
    .line 31
    iput-boolean v1, v4, LY/M;->g:Z

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    invoke-virtual {v2, v4}, LY/K;->t(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v2, v0, Lf/S;->H:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, LY/u;

    .line 40
    .line 41
    iget-object v2, v2, LY/u;->P:LY/K;

    .line 42
    .line 43
    invoke-virtual {v2, v3}, LY/K;->x(Z)Z

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, LY/v;->Y:Le0/o;

    .line 47
    .line 48
    sget-object v3, Le0/i;->ON_START:Le0/i;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Le0/o;->f(Le0/i;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v0, Lf/S;->H:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, LY/u;

    .line 56
    .line 57
    iget-object v0, v0, LY/u;->P:LY/K;

    .line 58
    .line 59
    iput-boolean v1, v0, LY/K;->F:Z

    .line 60
    .line 61
    iput-boolean v1, v0, LY/K;->G:Z

    .line 62
    .line 63
    iget-object v2, v0, LY/K;->M:LY/M;

    .line 64
    .line 65
    iput-boolean v1, v2, LY/M;->g:Z

    .line 66
    .line 67
    const/4 v1, 0x5

    .line 68
    invoke-virtual {v0, v1}, LY/K;->t(I)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, LY/v;->X:Lf/S;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf/S;->S()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, LY/v;->b0:Z

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, LY/v;->X:Lf/S;

    .line 8
    .line 9
    invoke-virtual {v1}, Lf/S;->R()LY/K;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, LY/v;->o(LY/K;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    iget-object v1, v1, Lf/S;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, LY/u;

    .line 22
    .line 23
    iget-object v1, v1, LY/u;->P:LY/K;

    .line 24
    .line 25
    iput-boolean v0, v1, LY/K;->G:Z

    .line 26
    .line 27
    iget-object v2, v1, LY/K;->M:LY/M;

    .line 28
    .line 29
    iput-boolean v0, v2, LY/M;->g:Z

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    invoke-virtual {v1, v0}, LY/K;->t(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, LY/v;->Y:Le0/o;

    .line 36
    .line 37
    sget-object v1, Le0/i;->ON_STOP:Le0/i;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Le0/o;->f(Le0/i;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
