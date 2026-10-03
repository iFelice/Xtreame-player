.class public final LU2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP4/d;


# static fields
.field public static final a:LU2/a;

.field public static final b:LP4/c;

.field public static final c:LP4/c;

.field public static final d:LP4/c;

.field public static final e:LP4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LU2/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LU2/a;->a:LU2/a;

    .line 7
    .line 8
    invoke-static {}, LK/k;->c()LK/k;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    iput v1, v0, LK/k;->H:I

    .line 14
    .line 15
    invoke-virtual {v0}, LK/k;->b()LS4/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    const-class v2, LS4/e;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v0, LP4/c;

    .line 30
    .line 31
    new-instance v3, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v3, "window"

    .line 41
    .line 42
    invoke-direct {v0, v3, v1}, LP4/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, LU2/a;->b:LP4/c;

    .line 46
    .line 47
    invoke-static {}, LK/k;->c()LK/k;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x2

    .line 52
    iput v1, v0, LK/k;->H:I

    .line 53
    .line 54
    invoke-virtual {v0}, LK/k;->b()LS4/a;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    new-instance v0, LP4/c;

    .line 67
    .line 68
    new-instance v3, Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v3, "logSourceMetrics"

    .line 78
    .line 79
    invoke-direct {v0, v3, v1}, LP4/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    .line 81
    .line 82
    sput-object v0, LU2/a;->c:LP4/c;

    .line 83
    .line 84
    invoke-static {}, LK/k;->c()LK/k;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/4 v1, 0x3

    .line 89
    iput v1, v0, LK/k;->H:I

    .line 90
    .line 91
    invoke-virtual {v0}, LK/k;->b()LS4/a;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    new-instance v0, LP4/c;

    .line 104
    .line 105
    new-instance v3, Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v3, "globalMetrics"

    .line 115
    .line 116
    invoke-direct {v0, v3, v1}, LP4/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 117
    .line 118
    .line 119
    sput-object v0, LU2/a;->d:LP4/c;

    .line 120
    .line 121
    invoke-static {}, LK/k;->c()LK/k;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const/4 v1, 0x4

    .line 126
    iput v1, v0, LK/k;->H:I

    .line 127
    .line 128
    invoke-virtual {v0}, LK/k;->b()LS4/a;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v1, Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    new-instance v0, LP4/c;

    .line 141
    .line 142
    new-instance v2, Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    const-string v2, "appNamespace"

    .line 152
    .line 153
    invoke-direct {v0, v2, v1}, LP4/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 154
    .line 155
    .line 156
    sput-object v0, LU2/a;->e:LP4/c;

    .line 157
    .line 158
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, LX2/a;

    .line 2
    .line 3
    check-cast p2, LP4/e;

    .line 4
    .line 5
    iget-object v0, p1, LX2/a;->a:LX2/g;

    .line 6
    .line 7
    sget-object v1, LU2/a;->b:LP4/c;

    .line 8
    .line 9
    invoke-interface {p2, v1, v0}, LP4/e;->a(LP4/c;Ljava/lang/Object;)LP4/e;

    .line 10
    .line 11
    .line 12
    sget-object v0, LU2/a;->c:LP4/c;

    .line 13
    .line 14
    iget-object v1, p1, LX2/a;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p2, v0, v1}, LP4/e;->a(LP4/c;Ljava/lang/Object;)LP4/e;

    .line 17
    .line 18
    .line 19
    sget-object v0, LU2/a;->d:LP4/c;

    .line 20
    .line 21
    iget-object v1, p1, LX2/a;->c:LX2/b;

    .line 22
    .line 23
    invoke-interface {p2, v0, v1}, LP4/e;->a(LP4/c;Ljava/lang/Object;)LP4/e;

    .line 24
    .line 25
    .line 26
    sget-object v0, LU2/a;->e:LP4/c;

    .line 27
    .line 28
    iget-object p1, p1, LX2/a;->d:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {p2, v0, p1}, LP4/e;->a(LP4/c;Ljava/lang/Object;)LP4/e;

    .line 31
    .line 32
    .line 33
    return-void
.end method
