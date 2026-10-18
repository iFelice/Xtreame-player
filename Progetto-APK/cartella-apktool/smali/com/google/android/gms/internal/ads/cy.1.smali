.class public final Lcom/google/android/gms/internal/ads/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:I = 0x1


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lg4/h;

.field public final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lg4/r;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cy;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cy;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cy;->c:Lg4/h;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/cy;->d:Z

    .line 11
    .line 12
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Z)Lcom/google/android/gms/internal/ads/cy;
    .locals 3

    .line 1
    new-instance v0, Lg4/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lg4/i;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/co;

    .line 9
    .line 10
    const/16 v2, 0xf

    .line 11
    .line 12
    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/internal/ads/co;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/Zn;

    .line 20
    .line 21
    const/16 v2, 0x10

    .line 22
    .line 23
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/cy;

    .line 30
    .line 31
    iget-object v0, v0, Lg4/i;->a:Lg4/r;

    .line 32
    .line 33
    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/cy;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lg4/r;Z)V

    .line 34
    .line 35
    .line 36
    return-object v1
.end method


# virtual methods
.method public final b(IJLjava/lang/Exception;)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cy;->d(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lg4/r;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final c(IJ)V
    .locals 7

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cy;->d(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lg4/r;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final d(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lg4/r;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cy;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cy;->c:Lg4/h;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cy;->b:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance p3, Lc4/A;

    .line 10
    .line 11
    const/16 p4, 0x19

    .line 12
    .line 13
    invoke-direct {p3, p4}, Lc4/A;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, p3}, Lg4/h;->d(Ljava/util/concurrent/Executor;Lg4/b;)Lg4/r;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cy;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/T3;->A()Lcom/google/android/gms/internal/ads/P3;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 32
    .line 33
    .line 34
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 35
    .line 36
    check-cast v2, Lcom/google/android/gms/internal/ads/T3;

    .line 37
    .line 38
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/T3;->G(Lcom/google/android/gms/internal/ads/T3;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 42
    .line 43
    .line 44
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 45
    .line 46
    check-cast v0, Lcom/google/android/gms/internal/ads/T3;

    .line 47
    .line 48
    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/ads/T3;->B(Lcom/google/android/gms/internal/ads/T3;J)V

    .line 49
    .line 50
    .line 51
    sget p2, Lcom/google/android/gms/internal/ads/cy;->e:I

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 54
    .line 55
    .line 56
    iget-object p3, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 57
    .line 58
    check-cast p3, Lcom/google/android/gms/internal/ads/T3;

    .line 59
    .line 60
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/T3;->H(Lcom/google/android/gms/internal/ads/T3;I)V

    .line 61
    .line 62
    .line 63
    if-eqz p4, :cond_1

    .line 64
    .line 65
    new-instance p2, Ljava/io/StringWriter;

    .line 66
    .line 67
    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance p3, Ljava/io/PrintWriter;

    .line 71
    .line 72
    invoke-direct {p3, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 83
    .line 84
    .line 85
    iget-object p3, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 86
    .line 87
    check-cast p3, Lcom/google/android/gms/internal/ads/T3;

    .line 88
    .line 89
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/T3;->C(Lcom/google/android/gms/internal/ads/T3;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 101
    .line 102
    .line 103
    iget-object p3, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 104
    .line 105
    check-cast p3, Lcom/google/android/gms/internal/ads/T3;

    .line 106
    .line 107
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/T3;->D(Lcom/google/android/gms/internal/ads/T3;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    if-eqz p6, :cond_2

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 113
    .line 114
    .line 115
    iget-object p2, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 116
    .line 117
    check-cast p2, Lcom/google/android/gms/internal/ads/T3;

    .line 118
    .line 119
    invoke-static {p2, p6}, Lcom/google/android/gms/internal/ads/T3;->E(Lcom/google/android/gms/internal/ads/T3;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    if-eqz p5, :cond_3

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 125
    .line 126
    .line 127
    iget-object p2, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 128
    .line 129
    check-cast p2, Lcom/google/android/gms/internal/ads/T3;

    .line 130
    .line 131
    invoke-static {p2, p5}, Lcom/google/android/gms/internal/ads/T3;->F(Lcom/google/android/gms/internal/ads/T3;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cy;->c:Lg4/h;

    .line 135
    .line 136
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/cy;->b:Ljava/util/concurrent/Executor;

    .line 137
    .line 138
    new-instance p4, LK/k;

    .line 139
    .line 140
    const/16 p5, 0xb

    .line 141
    .line 142
    invoke-direct {p4, v1, p1, p5}, LK/k;-><init>(Ljava/lang/Object;II)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, p3, p4}, Lg4/h;->d(Ljava/util/concurrent/Executor;Lg4/b;)Lg4/r;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    return-object p1
.end method
