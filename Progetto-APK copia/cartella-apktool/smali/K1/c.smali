.class public final LK1/c;
.super LK1/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "context"

    .line 3
    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    .line 6
    invoke-static {p1, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, LA0/F;->d(Landroid/content/Context;)Landroid/adservices/measurement/MeasurementManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "get(context)"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, LK1/e;-><init>(Landroid/adservices/measurement/MeasurementManager;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {p1, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, LA0/F;->o()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p1, p2}, LF2/D;->j(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "context.getSystemService\u2026ementManager::class.java)"

    .line 34
    .line 35
    invoke-static {p1, p2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, LA0/F;->e(Ljava/lang/Object;)Landroid/adservices/measurement/MeasurementManager;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, LK1/e;-><init>(Landroid/adservices/measurement/MeasurementManager;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
