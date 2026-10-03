.class public final LU1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT1/f;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Ljava/lang/String;

.field public final I:LT1/c;

.field public final J:Z

.field public final K:Z

.field public final L:Lt6/f;

.field public M:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;LT1/c;ZZ)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, LU1/h;->G:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, LU1/h;->H:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p3, p0, LU1/h;->I:LT1/c;

    .line 19
    .line 20
    iput-boolean p4, p0, LU1/h;->J:Z

    .line 21
    .line 22
    iput-boolean p5, p0, LU1/h;->K:Z

    .line 23
    .line 24
    new-instance p1, Le0/C;

    .line 25
    .line 26
    const/4 p2, 0x2

    .line 27
    invoke-direct {p1, p0, p2}, Le0/C;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Lt6/f;

    .line 31
    .line 32
    invoke-direct {p2, p1}, Lt6/f;-><init>(LC6/a;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, LU1/h;->L:Lt6/f;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, LU1/h;->L:Lt6/f;

    .line 2
    .line 3
    iget-object v0, v0, Lt6/f;->H:Ljava/lang/Object;

    .line 4
    .line 5
    sget-object v1, Lt6/g;->a:Lt6/g;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LU1/h;->L:Lt6/f;

    .line 10
    .line 11
    invoke-virtual {v0}, Lt6/f;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, LU1/g;

    .line 16
    .line 17
    invoke-virtual {v0}, LU1/g;->close()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final getWritableDatabase()LT1/b;
    .locals 2

    .line 1
    iget-object v0, p0, LU1/h;->L:Lt6/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lt6/f;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LU1/g;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, LU1/g;->k(Z)LT1/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LU1/h;->L:Lt6/f;

    .line 2
    .line 3
    iget-object v0, v0, Lt6/f;->H:Ljava/lang/Object;

    .line 4
    .line 5
    sget-object v1, Lt6/g;->a:Lt6/g;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LU1/h;->L:Lt6/f;

    .line 10
    .line 11
    invoke-virtual {v0}, Lt6/f;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, LU1/g;

    .line 16
    .line 17
    const-string v1, "sQLiteOpenHelper"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-boolean p1, p0, LU1/h;->M:Z

    .line 26
    .line 27
    return-void
.end method
