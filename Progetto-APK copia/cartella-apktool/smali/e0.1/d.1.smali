.class public final Le0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/k;


# instance fields
.field public final G:Ljava/lang/Object;

.field public final H:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    sget-object v0, Le0/c;->c:Le0/c;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Le0/c;->b(Ljava/lang/Class;)Le0/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Le0/d;->H:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b(Le0/m;Le0/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le0/d;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le0/a;

    .line 4
    .line 5
    iget-object v0, v0, Le0/a;->a:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/util/List;

    .line 12
    .line 13
    iget-object v2, p0, Le0/d;->G:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {v1, p1, p2, v2}, Le0/a;->a(Ljava/util/List;Le0/m;Le0/i;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Le0/i;->ON_ANY:Le0/i;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/List;

    .line 25
    .line 26
    invoke-static {v0, p1, p2, v2}, Le0/a;->a(Ljava/util/List;Le0/m;Le0/i;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
