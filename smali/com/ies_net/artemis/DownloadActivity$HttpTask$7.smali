.class Lcom/ies_net/artemis/DownloadActivity$HttpTask$7;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 208
    iput-object p1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$7;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 211
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 213
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$7;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    iget-object v0, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/ies_net/artemis/DownloadActivity;->setResult(ILandroid/content/Intent;)V

    .line 214
    iget-object p1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$7;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    iget-object p1, p1, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-virtual {p1}, Lcom/ies_net/artemis/DownloadActivity;->finish()V

    return-void
.end method
