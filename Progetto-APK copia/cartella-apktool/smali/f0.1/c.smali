.class public final Lf0/c;
.super Lf0/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    sget-object v0, Lf0/a;->b:Lf0/a;

    invoke-direct {p0, v0}, Lf0/c;-><init>(Lf0/b;)V

    return-void
.end method

.method public constructor <init>(Lf0/b;)V
    .locals 1

    .line 1
    const-string v0, "initialExtras"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lf0/b;-><init>()V

    .line 3
    iget-object v0, p0, Lf0/b;->a:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lf0/b;->a:Ljava/util/LinkedHashMap;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
