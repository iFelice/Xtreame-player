.class public final LZ3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static i:LZ3/c;


# instance fields
.field public final a:LZ3/c;

.field public final b:LO1/J;

.field public final c:LZ3/X;

.field public final d:LZ3/X;

.field public final e:LZ3/X;

.field public final f:LZ3/X;

.field public final g:LZ3/h;

.field public final h:LZ3/X;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, LZ3/c;->a:LZ3/c;

    .line 5
    .line 6
    new-instance v1, LO1/J;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-direct {v1, p1, v0}, LO1/J;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, LZ3/c;->b:LO1/J;

    .line 15
    .line 16
    new-instance p1, LZ3/f;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-direct {p1, v1, v0}, LZ3/f;-><init>(LO1/J;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, LZ3/V;->a(LZ3/W;)LZ3/X;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, LZ3/c;->c:LZ3/X;

    .line 27
    .line 28
    sget-object v0, LZ3/C;->b:LS3/g;

    .line 29
    .line 30
    invoke-static {v0}, LZ3/V;->a(LZ3/W;)LZ3/X;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p0, LZ3/c;->d:LZ3/X;

    .line 35
    .line 36
    new-instance v0, LC2/g;

    .line 37
    .line 38
    const/16 v3, 0x1b

    .line 39
    .line 40
    invoke-direct {v0, p0, v3}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    new-instance v3, LZ3/f;

    .line 44
    .line 45
    invoke-direct {v3, v0}, LZ3/f;-><init>(LC2/g;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v3}, LZ3/V;->a(LZ3/W;)LZ3/X;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    iput-object v8, p0, LZ3/c;->e:LZ3/X;

    .line 53
    .line 54
    new-instance v5, LZ3/e0;

    .line 55
    .line 56
    invoke-direct {v5, v1, p1}, LZ3/e0;-><init>(LO1/J;LZ3/X;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, LS3/g;

    .line 60
    .line 61
    const/16 v3, 0xc

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-direct {v0, v3, v4}, LS3/g;-><init>(II)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, LZ3/V;->a(LZ3/W;)LZ3/X;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    iput-object v7, p0, LZ3/c;->f:LZ3/X;

    .line 72
    .line 73
    new-instance v0, LZ3/f;

    .line 74
    .line 75
    invoke-direct {v0, v1, v4}, LZ3/f;-><init>(LO1/J;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, LZ3/V;->a(LZ3/W;)LZ3/X;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v3, LZ3/n;

    .line 83
    .line 84
    invoke-direct {v3, v1, v0}, LZ3/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v3}, LZ3/V;->a(LZ3/W;)LZ3/X;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v3, LZ3/h;

    .line 92
    .line 93
    invoke-direct {v3, v1, p1, v0}, LZ3/h;-><init>(LO1/J;LZ3/X;LZ3/X;)V

    .line 94
    .line 95
    .line 96
    iput-object v3, p0, LZ3/c;->g:LZ3/h;

    .line 97
    .line 98
    new-instance v6, LZ3/a;

    .line 99
    .line 100
    invoke-direct {v6, v7, v3, p1}, LZ3/a;-><init>(LZ3/X;LZ3/h;LZ3/X;)V

    .line 101
    .line 102
    .line 103
    new-instance v9, LZ3/h0;

    .line 104
    .line 105
    move-object v0, v9

    .line 106
    move-object v3, p1

    .line 107
    move-object v4, v8

    .line 108
    invoke-direct/range {v0 .. v7}, LZ3/h0;-><init>(LO1/J;LZ3/X;LZ3/X;LZ3/X;LZ3/e0;LZ3/a;LZ3/X;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/google/android/gms/internal/ads/bD;

    .line 112
    .line 113
    const/16 v1, 0xa

    .line 114
    .line 115
    invoke-direct {v0, p1, v9, v8, v1}, Lcom/google/android/gms/internal/ads/bD;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, LZ3/V;->a(LZ3/W;)LZ3/X;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, LZ3/c;->h:LZ3/X;

    .line 123
    .line 124
    return-void

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 126
    .line 127
    const-string v0, "instance cannot be null"

    .line 128
    .line 129
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1
.end method

.method public static a(Landroid/content/Context;)LZ3/c;
    .locals 2

    .line 1
    const-class v0, LZ3/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, LZ3/c;->i:LZ3/c;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/Application;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v1, LZ3/c;

    .line 18
    .line 19
    invoke-direct {v1, p0}, LZ3/c;-><init>(Landroid/app/Application;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, LZ3/c;->i:LZ3/c;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    sget-object p0, LZ3/c;->i:LZ3/c;

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-object p0

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method
