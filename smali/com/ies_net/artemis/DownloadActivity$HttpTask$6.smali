.class Lcom/ies_net/artemis/DownloadActivity$HttpTask$6;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/DownloadActivity$HttpTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$6;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$6;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$500(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
