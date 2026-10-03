.class public final LU2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP4/d;


# static fields
.field public static final a:LU2/b;

.field public static final b:LP4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LU2/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LU2/b;->a:LU2/b;

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
    new-instance v2, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "storageMetrics"

    .line 41
    .line 42
    invoke-direct {v0, v2, v1}, LP4/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, LU2/b;->b:LP4/c;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, LX2/b;

    .line 2
    .line 3
    check-cast p2, LP4/e;

    .line 4
    .line 5
    iget-object p1, p1, LX2/b;->a:LX2/f;

    .line 6
    .line 7
    sget-object v0, LU2/b;->b:LP4/c;

    .line 8
    .line 9
    invoke-interface {p2, v0, p1}, LP4/e;->a(LP4/c;Ljava/lang/Object;)LP4/e;

    .line 10
    .line 11
    .line 12
    return-void
.end method
