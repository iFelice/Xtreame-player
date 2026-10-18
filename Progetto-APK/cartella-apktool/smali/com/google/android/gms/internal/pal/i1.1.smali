.class public final Lcom/google/android/gms/internal/pal/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Landroid/os/ConditionVariable;

.field public static volatile d:LP0/j;

.field public static volatile e:Ljava/util/Random;


# instance fields
.field public final a:Lcom/google/android/gms/internal/pal/A1;

.field public volatile b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/ConditionVariable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/pal/i1;->c:Landroid/os/ConditionVariable;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/pal/i1;->d:LP0/j;

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/internal/pal/i1;->e:Ljava/util/Random;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pal/A1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/i1;->a:Lcom/google/android/gms/internal/pal/A1;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/pal/A1;->b:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/pal/Y0;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/pal/Y0;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(IIJLjava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/pal/i1;->c:Landroid/os/ConditionVariable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/i1;->b:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_8

    .line 13
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/pal/i1;->d:LP0/j;

    .line 15
    .line 16
    if-eqz v0, :cond_8

    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/pal/U1;->m()Lcom/google/android/gms/internal/pal/U0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/i1;->a:Lcom/google/android/gms/internal/pal/A1;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/A1;->a:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 36
    .line 37
    .line 38
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 39
    .line 40
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 41
    .line 42
    check-cast v2, Lcom/google/android/gms/internal/pal/U1;

    .line 43
    .line 44
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/pal/U1;->r(Lcom/google/android/gms/internal/pal/U1;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 52
    .line 53
    .line 54
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 55
    .line 56
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 57
    .line 58
    check-cast v1, Lcom/google/android/gms/internal/pal/U1;

    .line 59
    .line 60
    invoke-static {v1, p3, p4}, Lcom/google/android/gms/internal/pal/U1;->n(Lcom/google/android/gms/internal/pal/U1;J)V

    .line 61
    .line 62
    .line 63
    if-eqz p5, :cond_3

    .line 64
    .line 65
    iget-boolean p3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 66
    .line 67
    if-eqz p3, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 70
    .line 71
    .line 72
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 73
    .line 74
    :cond_2
    iget-object p3, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 75
    .line 76
    check-cast p3, Lcom/google/android/gms/internal/pal/U1;

    .line 77
    .line 78
    invoke-static {p3, p5}, Lcom/google/android/gms/internal/pal/U1;->q(Lcom/google/android/gms/internal/pal/U1;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    if-eqz p6, :cond_6

    .line 82
    .line 83
    new-instance p3, Ljava/io/StringWriter;

    .line 84
    .line 85
    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance p4, Ljava/io/PrintWriter;

    .line 89
    .line 90
    invoke-direct {p4, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p6, p4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    iget-boolean p4, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 101
    .line 102
    if-eqz p4, :cond_4

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 105
    .line 106
    .line 107
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 108
    .line 109
    :cond_4
    iget-object p4, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 110
    .line 111
    check-cast p4, Lcom/google/android/gms/internal/pal/U1;

    .line 112
    .line 113
    invoke-static {p4, p3}, Lcom/google/android/gms/internal/pal/U1;->o(Lcom/google/android/gms/internal/pal/U1;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    iget-boolean p4, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 125
    .line 126
    if-eqz p4, :cond_5

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 129
    .line 130
    .line 131
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 132
    .line 133
    :cond_5
    iget-object p4, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 134
    .line 135
    check-cast p4, Lcom/google/android/gms/internal/pal/U1;

    .line 136
    .line 137
    invoke-static {p4, p3}, Lcom/google/android/gms/internal/pal/U1;->p(Lcom/google/android/gms/internal/pal/U1;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    sget-object p3, Lcom/google/android/gms/internal/pal/i1;->d:LP0/j;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 143
    .line 144
    .line 145
    move-result-object p4

    .line 146
    check-cast p4, Lcom/google/android/gms/internal/pal/U1;

    .line 147
    .line 148
    invoke-virtual {p4}, Lcom/google/android/gms/internal/pal/j;->b()[B

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    new-instance p5, Lc/g;

    .line 156
    .line 157
    const/16 p6, 0xc

    .line 158
    .line 159
    invoke-direct {p5, p3, p4, p6}, Lc/g;-><init>(Ljava/lang/Object;[BI)V

    .line 160
    .line 161
    .line 162
    iput p1, p5, Lc/g;->I:I

    .line 163
    .line 164
    const/4 p1, -0x1

    .line 165
    if-eq p2, p1, :cond_7

    .line 166
    .line 167
    iput p2, p5, Lc/g;->H:I

    .line 168
    .line 169
    :cond_7
    invoke-virtual {p5}, Lc/g;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    :catch_0
    :cond_8
    return-void
.end method
